class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # helper_method :make_sets
  # helper_method :make_active

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:current_password, :username, :email, :password, :password_confirmation) }
  end
  #
  # def make_sets
  #   sets = self.each_slice(4).to_a
  #   return sets
  # end
  #
  # def make_active
  #   sets = self.each_slice(4).to_a
  #   sets.each do |set|
  #     if set === sets[0]
  #        self.active = true
  #     end
  # end

# end
end
