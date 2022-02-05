class DucksController < ApplicationController
  before_action :find_duck, only: [:show]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_params)
    # @duck.user = current_user
    if @duck.save
      redirect_to duck_path(@duck)
    else
      render :new
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :age, :nationality, :photo)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end
end
