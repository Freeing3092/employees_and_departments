require 'rspec'
require './lib/employee'
require './lib/department'
require './lib/division'

RSpec.describe Division do
  let(:division) {Division.new("Marketing")}
  let(:marketing_research) {Department.new("Marketing Research")}
  let(:marketing_implementation) {Department.new("Marketing Implementation")}
  let(:bobbi) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  let(:aaron) {Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}
  
  it "is an instance of its class" do
    expect(division).to be_a Division
  end
  
  it "has a name" do
    expect(division.name).to eq("Marketing")
  end
  
  it "can have multiple departments" do
    expect(division.departments).to eq([])
    
    division.add_department(marketing_research)
    division.add_department(marketing_implementation)
    result = [marketing_research, marketing_implementation]
    
    expect(division.departments).to eq(result)
  end
  
  it "can list all departments with multiple employees" do
    marketing_research.hire(bobbi)
    marketing_research.hire(aaron)
    division.add_department(marketing_research)
    division.add_department(marketing_implementation)
    
    expect(division.depts_with_mulitple_employees).to eq([marketing_research])
  end
  
  it "can list all employees names" do
    marketing_research.hire(bobbi)
    marketing_implementation.hire(aaron)
    division.add_department(marketing_research)
    division.add_department(marketing_implementation)
    result = [bobbi.name, aaron.name]
    
    expect(division.list_employee_names).to eq(result)
  end
end

















