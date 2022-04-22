class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.create(params.require(:food).permit(:name, :price, :description))

    redirect_to foods_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(resource_params)
    redirect_to foods_path
  end

  def resource_params
    params.require(:food).permit(:name, :price, :description)
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to foods_path
  end
end
