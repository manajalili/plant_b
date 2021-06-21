class ApplicationController < ActionController::Base
  # added on June 2021 to allow public view 
  before_action :authenticate_user!, :except => [:index]

    def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
