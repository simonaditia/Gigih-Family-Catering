class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

  def index
    @foods = params[:id].nil? ? Food.all : Food.by_id(params[:id])
  end

  def show
    @food = Food.find(params[:id])    
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html {redirect_to foods_path(@food), notice: "Food was successfully created"}
        format.json {render :show, status: :created, location: @food}
      else
        format.html {render :new, status: :unprocessable_entity}
        format.json {render json: @food.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])

    respond_to do |format|
      if @food.update(food_params)
        format.html {redirect_to foods_path(@food), notice: "Food was successfully updated"}
        format.json {render :show, status: :ok, location: @food}
      else
        format.html {render :edit, status: :unprocessable_entity}
        format.json {render json: @food.errors, status: :unprocessable_entity}
      end
    end
  end

  def resource_params
    params.require(:food).permit(:name, :price, :description)
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to foods_path
  end

  private
  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.fetch(:food, {}).permit(:name, :description, :price, category: [])
  end
end
