class EstudianteController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role == "admin"
      redirect_to admin_index_path
    elsif current_user.role == "encargado"
      redirect_to encargado_index_path
    else
      # handle other cases
    end
  end
end
