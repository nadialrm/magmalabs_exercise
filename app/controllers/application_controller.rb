class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ##--- Restrict for auth
  before_action :authenticate_user!

  ##--- Params permited for users
  before_action :configure_permitted_parameters, if: :devise_controller?

  ##--- Define params permited for users 
	def configure_permitted_parameters
		# devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
		###-- https://github.com/plataformatec/devise#strong-parameters   
		###-- https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :userid, :first_name, :last_name, :usertype, :email, :password, :remember_me) }
		# devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
	end
end
