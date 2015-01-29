class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.create(emp_params)
    @employee.save
    redirect_to employees_path
  end
  
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])
    @employee.update(emp_params)
    redirect_to employees_path
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end
  
  private
  
  def emp_params 
    params.require(:employee).permit(:name,:empid,:salary)
  end
  
end
