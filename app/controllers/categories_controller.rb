class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = current_user.categories
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(name: cate_params[:name], icon: cate_params[:icon])
    if @category.save
      flash[:notice] = 'Category has been created'
      redirect_to categories_path
    else
      flash[:notice] = 'Invalid Category'
    end
  end

  private

  def cate_params
    params.require(:category).permit(:name, :icon)
  end
end
