class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])
  end

  def confirm_logged_in
   #don't need to "return" anything here
   redirect_to new_sessions_path, notice: "Please login" unless session[:user_id]
  end

end
