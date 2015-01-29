class SchoolsController < ApplicationController

  def index
  @schools = School.all
  end
  
  def show
  @school = School.find(params[:id])
  
  end
  
  def new
  @school = School.new
  end
  
  def create
  @school = School.create(params_school)
   redirect_to schools_path
  end

  def edit
  @school = School.find(params[:id])
  end
  
  def update
  @school = School.find(params[:id])
  @school.update(params_school)
  #raise params.inspect
  redirect_to schools_path
  end  
  
  def destroy
  @school = School.find(params[:id])
  @school.destroy
  redirect_to schools_path
  end
  
  private
  
  def params_school
  params.require(:school).permit(:name,:section,:rollnumber)
  end
  
  
end
