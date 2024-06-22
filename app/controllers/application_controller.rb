class ApplicationController < ActionController::Base
    include PostsHelper
    before_action :configure_devise_params, if: :devise_controller?
        
    def configure_devise_params
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email, :password, :password_confirmation, :skills, :bio, :image) }
    end
    
    
end
