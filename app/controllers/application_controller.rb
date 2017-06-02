class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:username, :password_confirmation, :provider, :uid]
    devise_parameter_sanitizer.for(:sign_in) << [:username, :remember_me]
  end
end
