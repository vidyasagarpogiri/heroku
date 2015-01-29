class ShopsController < ApplicationController
  
  def index
    @shop = Shop.all
  end
  
  def new
    @shop = Shop.new
  end
  
  def create
    @shop = Shop.create(params_shop)
    @shop.save
    redirect_to shops_path
  end
  
  def show
    @shop = Shop.find(params[:id])
  end
  
  def edit
    @shop = Shop.find(params[:id])
  end
  
  def update
    @shop = Shop.find(params[:id])
    @shop.update(params_shop)
    redirect_to shops_path
  end
  
  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end
  
  private
  
  def params_shop
    params.require(:shop).permit(:product,:brand,:price)
  end
  
end
