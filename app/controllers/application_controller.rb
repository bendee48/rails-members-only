class ApplicationController < ActionController::Base
  before_action :permitted_params, if: :devise_controller?

  protected

  def permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
