require 'rspec'
require './lib/employee'

RSpec.describe Employee do
  let(:employee) {Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  
  it "is an instance of its class" do
    expect(employee).to be_a Employee
  end
  
  it "has attributes for name, age, and salary" do
    expect(employee.name).to eq("Bobbi Jaeger")
    expect(employee.age).to eq(30)
    expect(employee.salary).to eq(100000)
  end
end