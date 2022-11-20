class EmploymentsController < ApplicationController
  def new
    @employment = Employment.new
  end
end
