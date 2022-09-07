class Employee
  attr_reader :name, :age, :salary
  
  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age].to_i
    @salary = hash[:salary].to_i
  end
end