class TablesController < ApplicationController
  
  def index
  @tables = Table.all
  end
  
  def new
  @table = Table.new
  end
  
  def create
  @table = Table.create(params_table)
  @table.save
  redirect_to tables_path
  end
  
  def show
  @table = Table.find(params[:id])
  end
  
  
  def edit
  @table = Table.find(params[:id])
  end
  
  
  def update
  @table = Table.find(params[:id])
  @table.update(params_table)
  redirect_to tables_path
  end
  
  def destroy
  @table = Table.find(params[:id])
  @table.destroy
  redirect_to tables_path
  end
  
  private
  def params_table
  params.require(:table).permit(:model,:brand,:price)
  end
end
