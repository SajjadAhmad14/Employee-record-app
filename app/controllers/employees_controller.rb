class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end
    
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to controller: :employments, action: :new
    else
      render :new
    end
  end
    
  private
  
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :nick_name, :email, :phone)
  end
end
