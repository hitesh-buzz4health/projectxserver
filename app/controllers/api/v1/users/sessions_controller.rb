class Api::V1::Users::SessionsController < Devise::SessionsController
 # skip_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
 skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }
  before_filter :ensure_params_exist, :except => [:destroy]

  respond_to :json

  
  def create

            resource = User.find_for_database_authentication(:email => params[:user][:email]) 
            return invalid_login_attempt unless resource if resource.valid_password?(params[:user][:password])
            sign_in(:user, resource) 
            set_user resource 
            
           render :status => 200,
           :json => { :success => true,
                      :info => "Logged in",
                      :data => { 
                                 :id => User.current_user.id,
                                 :name => User.current_user.name} }

  end

  # DELETE /resource/sign_out
  def destroy
    super
  end
   


  def failure
    render :status => :unauthorized,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end
   
  #setting current user.
  def set_user user 
    User.current_user = user
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



 