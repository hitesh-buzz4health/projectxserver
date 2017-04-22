class Api::V1::PasswordsController < Devise::PasswordsController
  skip_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :json
end
