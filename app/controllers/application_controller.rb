class ApplicationController < ActionController::Base
    include PostsHelper
    before_action :configure_devise_params, if: :devise_controller?
        
    def configure_devise_params
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :skills, :bio, :image) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :skills, :bio, :image, :current_password) }
    end
    
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, alert: exception.message
    end
end
