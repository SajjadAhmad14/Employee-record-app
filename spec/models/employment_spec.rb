require 'rails_helper'

RSpec.describe Employment, type: :model do
  it "Employment should not be created if employer is blank" do
    employment = Employment.create(employer: "", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employment).not_to be_valid
  end

  it "Employment should be created if employer is not blank" do
    employment = Employment.create(employer: "test employer", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employment).to be_valid
  end

  it "Employment should not be created if date started is blank" do
    employment = Employment.create(employer: "test employer", date_started: "", date_employment_ended: "2022-02-05")  
    expect(employment).not_to be_valid
  end

  it "Employment should be created if date started is not blank" do
    employment = Employment.create(employer: "test employer", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employment).to be_valid
  end

  it "Employment should not be created if date employment ended is blank" do
    employment = Employment.create(employer: "test employer", date_started: "2020-12-20", date_employment_ended: "")  
    expect(employment).not_to be_valid
  end

  it "Employment should be created if date employment ended is not blank" do
    employment = Employment.create(employer: "test employer", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employment).to be_valid
  end
end
