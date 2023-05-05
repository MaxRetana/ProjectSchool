class EncargadoController < ApplicationController
  before_action :authenticate_user!
  def index
    @clubs = Club.all
  end
end
