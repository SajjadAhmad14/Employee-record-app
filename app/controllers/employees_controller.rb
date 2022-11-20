class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end
    
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to controller: :home, action: :home_page, notice: "Quote was successfully created."
    else
      render :new
    end
  end
    
  def index
  end
    
  private
  
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :nick_name, :email, :phone)
  end
end
