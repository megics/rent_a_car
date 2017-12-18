class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find_by(id: params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(category_params)

    if @brand.save
      redirect_to @brand
    else
      render 'new'
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to @brand
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to brands_path
  end

  private

  def brand_params
    params.require(:category).permit(:brandName, :brandDesc)
  end

end
