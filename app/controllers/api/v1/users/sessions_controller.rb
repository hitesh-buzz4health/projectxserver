class Api::V1::Users::SessionsController < Devise::SessionsController
 # skip_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
 skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :json

  
  def create

          warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")

           render :status => 200,
           :json => { :success => true,
                      :info => "Logged in",
                      :user => current_user.as_json,
                      :data => { :auth_token => current_user.authentication_token,
                                 :id => current_user.id,
                                 :name => current_user.name} }

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
end
