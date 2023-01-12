class ApplicationController < ActionController::Base
    before_action :configure_rermitted_parameters, if: :devise_controller?
    
    protected
    
    
    def configure_rermitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end
end
