# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
   
  private
  def sign_up_params
    params.require(:user).permit(:email, :name, :nacount, :role, :password)
  end

  def account_update_params
    params.require(:user).permit(:email, :name)
  end
  
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nacount, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nacount, :role])
  end

end
