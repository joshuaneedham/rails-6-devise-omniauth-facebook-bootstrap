# Whitelist additional fields for devise User objects.
module DeviseWhitelist
    extend ActiveSupport::Concern
  
    included do
      # Required to accept fields created outside of devise for profiles.
      before_action :configure_permitted_parameters, if: :devise_controller?
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      update_attrs = [:password, :password_confirmation, :current_password]
      devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    end
  end