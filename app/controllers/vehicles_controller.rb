class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
    @category = Category.all.collect{|m| [m.catName, m.id] }
    @model = Model.all.collect{|m| [m.modelName, m.id] }
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to @vehicle
    else
      render 'new'
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end


  private

  def vehicle_params
    params.require(:vehicle).permit(:licensePlate, :kilometer, :year, :engineCapacity, :rentMoney, :inspectionDate, :rented, :model_id, :category_id)
  end

end
