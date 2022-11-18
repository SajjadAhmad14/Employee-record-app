require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  it "Employee should not be created if first name is blank" do
    employee = Employee.create(first_name: "", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end
  
  it "Employee should be created if first name is not blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end
  
  it "Employee first name characters are more than 25" do
    employee = Employee.create(first_name: "testtesttesttesttesttesttest", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")
    expect(employee).to_not be_valid
  end
  
  it "Employee should not be created if last name is blank" do
    employee = Employee.create(first_name: "test", last_name: "", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end
  
  it "Employee should be created if last name is not blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end
  
  it "Employee last name characters are more than 50" do
    employee = Employee.create(first_name: "testtesttesttesttesttesttesttesttesttesttesttesttesttest", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")
    expect(employee).to_not be_valid
  end

  it "Employee should not be created if email is blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end

  it "Employee should be created if email is not blank" do
    employee = Employee.create(first_name: "test", last_name: "lat test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end

  it "Employee should not be created if phone is blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end

  it "Employee should be created if phone is not blank" do
    employee = Employee.create(first_name: "test", last_name: "lat test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end

  it "Employee should not be created if employer is blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end

  it "Employee should be created if employer is not blank" do
    employee = Employee.create(first_name: "test", last_name: "lat test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end

  it "Employee should not be created if date started is blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "", date_employment_ended: "2022-02-05")  
    expect(employee).not_to be_valid
  end

  it "Employee should be created if employer is not blank" do
    employee = Employee.create(first_name: "test", last_name: "lat test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end

  it "Employee should not be created if date employment ended is blank" do
    employee = Employee.create(first_name: "test", last_name: "last test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "", date_employment_ended: "")  
    expect(employee).not_to be_valid
  end

  it "Employee should be created if date employment ended is not blank" do
    employee = Employee.create(first_name: "test", last_name: "lat test", nick_name: "test",
      email: "a@a.com", employer: "test employer", phone: "099212345", date_started: "2020-12-20", date_employment_ended: "2022-02-05")  
    expect(employee).to be_valid
  end
end
