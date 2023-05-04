class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def new
    @users = User.where(role: 'encargado')
    @club = Club.new
  end

  def new_modal
    @users = User.where(role: 'encargado')
    @club = Club.new
    render 'new'
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      redirect_to clubs_path
    else
      render 'new'
    end
  end

  private

  def club_params
    params.require(:club).permit(:name, :capacity, :user_id, :description)
  end
  
end

