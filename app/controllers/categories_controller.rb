class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(id: params[:id])
  end

end
