class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(params.require(:category).permit(:name))

    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(resource_params)
    redirect_to categories_path
  end

  def resource_params
    params.require(:category).permit(:name)
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to categories_path
  end
end
