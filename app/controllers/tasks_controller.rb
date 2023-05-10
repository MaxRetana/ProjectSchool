class TasksController < ApplicationController
  before_action :authenticate_user!
  def new
    @clubs = Club.where(user_id: current_user.id)
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to club_path(@task.club_id)
    else
      render 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :file, :delivered, :user_id, :club_id)
  end

end
