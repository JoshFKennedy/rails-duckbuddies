class DucksController < ApplicationController
  before_action :find_duck, only: [:show]

  def index
    @ducks = Duck.all
  end

  def show
  end

  private

  def duck_params
    params.require(:list).permit(:name)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end
end
