class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
         user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
   end
  def after_sign_in_path_for(current_user)
    '/villain'
  end
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
