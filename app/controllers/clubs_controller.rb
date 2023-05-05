class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def new
    @users = User.where(role: 'encargado')
    @club = Club.new
  end

  def destroy
    @clubs = Club.find(params[:id])
    @clubs.destroy
    redirect_to clubs_path
  end


  def new_modal
    @users = User.where(role: 'encargado')
    @club = Club.new
    render 'new'
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      if current_user.role == "encargado"
        redirect_to encargado_index_path
      else
        redirect_to clubs_path
      end
    else
      render 'new'
    end
  end

  private

  def club_params
    params.require(:club).permit(:name, :capacity, :user_id, :description)
  end
  
end

