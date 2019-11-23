class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

protected
def configure_permitted_parameters
# sign_upのときに、name, ageを許可する
devise_parameter_sanitizer.permit :sign_up, keys: [:name, :phone]

# account_updateのときに、name,ageを許可する
devise_parameter_sanitizer.permit :account_update, keys: [:name, :phone]
end
end
