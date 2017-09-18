class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :select_layout

  def is_admin?
    if current_agent.admin?
      true
    else
      redirect_to properties_path, alert: 'Tu no eres administrador'
    end
  end

  protected
  def select_layout
    if controller_name == 'sessions' || controller_name == 'registrations' || controller_name == 'passwords'
      'public'
    else
      'admin'
    end
  end

  def configure_permitted_parameters
    [:sign_up, :account_update].each do |action|
      devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :phone, :about, :address, :company, :photo])
    end

  end
end
