class AdminController < ApplicationController

  def index
    if params[:search]
      @users = User.where(nacount: params[:search])
      flash[:notice] = "Usuario no encontrado" if @users.empty?
    else
      @users = User.order(:id)
    end
  end  

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  
    if @user.update(user_params)
      flash[:success] = "Usuario actualizado con éxito."
      redirect_to admin_index_path
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
  
  
end
