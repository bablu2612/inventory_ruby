class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token, if: :devise_controller?

    def after_sign_in_path_for(resource)
        "/admin"
    end
end
