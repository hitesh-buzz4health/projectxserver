class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 before_filter :set_current_user
 before_filter :authenticate_user_from_token!


  def set_current_user
  	
      Thread.current[:current_user] = current_user

  end 


   private
  

  #for authenticating the token 
  def authenticate_user_from_token!
    user_id = params[:id].presence
    user       = user_id && User.find_by_id(user_id)

    if user && Devise.secure_compare(user.authentication_token, params[:auth_token])
      sign_in user, store: false
    end
  end



end
