require_relative 'Employee'

class Manager < Employee
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @assigned = []
  end

  def bonus(multiplier)
    sum = 0
    assigned.each do |emp|
      sum += emp.salary
    end
    sum * multiplier
  end

attr_accessor :assigned

end
