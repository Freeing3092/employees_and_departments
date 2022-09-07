require 'rspec'
require './lib/employee'
require './lib/department'

RSpec.describe Department do
  let(:customer_service) {Department.new("Customer Service")}
  let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}
  
  it "is an instance of its class" do
    expect(customer_service).to be_a Department
  end
  
  it "has a name attribute" do
    expect(customer_service.name).to eq("Customer Service")
  end
  
  it "has an empty array of employees by default" do
    expect(customer_service.employees).to eq([])
  end
  
  it "#hire will add employees" do
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    result = [bobbi, aaron]
    
    expect(customer_service.employees).to eq(result)
  end
  
  it "has and attribute for expenses - 0 by default" do
    expect(customer_service.expenses).to eq(0)
  end
  
  it "#expense will add the argument to expenses attribute" do
    customer_service.expense(100)
    customer_service.expense(25)
    
    expect(customer_service.expenses).to eq(125)
  end
end
