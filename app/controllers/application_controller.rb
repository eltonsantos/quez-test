class ApplicationController < ActionController::Base

  # load_and_authorize_resource

  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  before_action :authenticate_user!

  # include Pundit

  skip_before_action :authenticate_user!, :only => [:index]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    case resource.role
    when 'admin'
      admin_purchases_path
    when 'manager'
      purchases_path
    when 'agent'
      root_path
    end
  end

  rescue_from CanCan::AccessDenied do
    flash[:error] = 'Access denied!'
    redirect_to root_url
  end
  
end
