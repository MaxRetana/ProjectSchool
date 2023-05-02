class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:search]
      @users = User.where(nacount: params[:search]).or(User.where(role: params[:search]))
      flash[:notice] = "Usuario no encontrado" if @users.empty?
    else
      @users = User.order(:id)
    end
  end  

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to admin_index_path
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
  
  def club_params
    params.require(:club).permit(:name, :capacity, :description)
  end
  
end
