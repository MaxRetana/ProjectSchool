# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    case current_user.role
    when "admin"
      admin_index_path
    when "encargado"
      encargado_index_path
    when "estudiante"
      estudiante_index_path
    else
      root_path
    end
  end

  before_action :find_user, only: :create

  private

  def find_user
    self.resource = User.find_by(nacount: params[:user][:login])
  end

  def sign_in_params
    devise_parameter_sanitizer.sanitize(:sign_in)
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
