class Api::V1::Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user, :only => [:destroy]
 skip_before_action :require_no_authentication, :only => [ :new, :create, :cancel , :destroy]
 skip_before_action :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }
  before_action :ensure_params_exist, :except => [:destroy]
  skip_before_action :authenticate_user_from_token!


  respond_to :json

  
  def create

            resource = User.find_for_database_authentication(:email => params[:user][:email]) 
            
            if !resource.nil?

            resource.valid_password?(params[:user][:password])
            sign_in(:user, resource) 
            resource.assign_authentication_token
            resource.save!
            render :status => 200,
            :json => {
                       :success => true,
                      :info => "Logged in",
                      :data => { :auth_token => resource.authentication_token,
                                 :id => resource.id.to_s,
                                 :name => resource.name} }

            else 

                 invalid_login_attempt

            end 


  end

  # DELETE /resource/sign_out
  def destroy 
    super
    remove_auth_token params[:auth_token]
    
   
  end
   


  def failure
    render :status => :unauthorized,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end
   
  

  def remove_auth_token token
     if !token.blank?
       user = User.where(authentication_token: token).first
       if !user.nil?
         user.authentication_token = nil 
         user.save!
       end 
     end 
  end 

 protected 


    def ensure_params_exist
      return unless params[:user].blank?
       render :json=>{:message=>"missing user_login parameter"}, 
                      :status=>422 
    end

     def invalid_login_attempt 
         render :json=> {:message=>"Error with your login or password"}, 
                      :status=>401 
     end



end



 