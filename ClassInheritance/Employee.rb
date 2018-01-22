class Employee
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    assign_to_boss(boss)
  end

  attr_accessor :name, :title, :salary, :boss

  def assign_to_boss(boss)
    if boss
      boss.assigned << self
      assign_to_boss(boss.boss)
    end
  end

  def bonus(multiplier)
    self.salary * multiplier
  end
end
