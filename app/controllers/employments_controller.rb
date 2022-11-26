class EmploymentsController < ApplicationController
  def new
    @employment = Employment.new
  end

  def create
    if employment_params[:date_started] != '' && employment_params[:date_employment_ended] != ''
      @employment = Employment.new(employer: employment_params[:employer], date_started:employment_params[:date_started], date_employment_ended: employment_params[:date_employment_ended])
    else
      @employment = Employment.new(employment_params)
    end
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
