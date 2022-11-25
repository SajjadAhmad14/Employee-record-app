class EmploymentsController < ApplicationController
  def new
    @employment = Employment.new
  end

  def create
    p employment_params
    @employment = Employment.new(employment_params)
    if @employment.save
      redirect_to controller: :home, action: :home_page, notice: "Employment is created successfully."
    else
      render :new
    end
  end
    
  private
  
  def employment_params
    params.require(:employment).permit(:employer, :date_started, :date_employment_ended)
  end
end
