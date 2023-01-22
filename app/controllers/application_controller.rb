class ApplicationController < ActionController::Base
  before_action :set_current_user, :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
  end

  def set_current_user
    @user = current_user
  end
end
