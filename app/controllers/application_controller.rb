class ApplicationController < ActionController::Base
  before_action :configure_parmitted_parameter, if: :devise_controller?

  protected
  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, key: [:username])
  end
end
