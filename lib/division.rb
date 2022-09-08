class Division
  attr_reader :name, :departments
  
  def initialize(name)
    @name = name
    @departments = []
  end
  
  def add_department(dept)
    @departments << dept
  end
  
  def depts_with_mulitple_employees
    depts_with_employees = @departments.select do |dept|
      dept.employees.size > 1
    end
    depts_with_employees
  end
  
  # def list_employee_names
  #   division_employees = []
  #   @departments.each do |dept|
  #     dept.employees.each {|employee| division_employees << employee.name}
  #   end
  #   division_employees.flatten
  # end
  
  def list_employee_names
    division_employees = []
    @departments.each do |dept|
      division_employees << dept.employees.map {|employee| employee.name}
    end
    division_employees.flatten
  end
end