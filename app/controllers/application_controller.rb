class ApplicationController < ActionController::Base
    before_action :configure_rermitted_parameters, if: :devise_controller?
    
    def after_sign_in_path_for(resource)
        post_images_path
    end 
    
    def after_sign_out_path_for(resource)
        homes_about_path
    end 
    
    protected
    
    
    
    
    def configure_rermitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end
    
end
