class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  unless Rails.application.config.consider_all_requests_local
    rescue_from ActionController::RoutingError, with: :not_found
    rescue_from ActionController::UnknownController, with: :not_found
    rescue_from ActionController::UnknownAction, with: :not_found
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end

  protected

  def not_found
    respond_to do |format|
      format.html { render template: 'shared/errors/404', status: 404 }
      format.json { render json: exception , status: 404 }
      format.all { render nothing: true, status: 404 }
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name, :phone_number, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name, :phone_number,:email, :password, :password_confirmation, :current_password) }
  end
end
