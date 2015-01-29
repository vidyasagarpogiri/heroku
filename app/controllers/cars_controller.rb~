class CarsController < ApplicationController

  def index
  @cars=Car.all
  end
  
  def new
  @car = Car.new
  end
  
  def create
  @car = Car.create(carparams)
  @car.save
  redirect_to cars_path
  end
  
  def edit
  @car = Car.find(params[:id])
  end
  
  def show
  @car = Car.find(params[:id])
  end
  
  def update
    @car = Car.find(params[:id])
    @car.update(carparams)
    redirect_to cars_path
  end
  
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end
  
  def carparams
    params.require(:car).permit(:name, :brand, :colour)
  end
end
