class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
 devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
 devise_parameter_sanitizer.permit(:sign_in, keys: [:name,:email])
 end
private
def after_sign_out_path_for(resource_or_scope)
      top_path
    end
end
