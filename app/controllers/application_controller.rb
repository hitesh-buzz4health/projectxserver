class ApplicationController < ActionController::Base
  
protect_from_forgery with: :exception

skip_before_action :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }



 before_action :authenticate_user_from_token!

 helper_method :current_user


   protected
       def current_user
           
           return @current_user
       end

 

   private
  

  #for authenticating the token 
  def authenticate_user_from_token!
    user_id = params[:user_id].presence
    user       = user_id && User.find_by_id(user_id)
    if user && Devise.secure_compare(user.authentication_token, params[:auth_token])
      sign_in user, store: false
      @current_user = user 
    else 
          error_authentication
    end 
  end
   
   def error_authentication


         # response when authentication fails 
             respond_to do |format|

              format.json{
               render :json =>{
                              :success => false,
                              :info => "The auth token and id  does not match.please login ." } }
              end 
            
   end


end
