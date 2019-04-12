class Employee
  attr_reader :name, :salary, :title
  attr_accessor :boss

  def initialize(name, salary, title, boss = nil)
     @name, @salary, @title = name, salary, title
    self.boss = boss
  end

  def boss=(boss)
    @boss = boss
    @boss.add_employee(self) unless boss.nil?

    boss
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
    bonus
  end
end


class Manager < Employee
  attr_reader :employees 

  def initialize(name, salary, title, boss = nil)
    super(name, salary, title, boss)
    @employees = []
  end

  def add_employee(subordinate)
    employees << subordinate
    
    subordinate
  end

  def bonus(multiplier)
    bonus = total_salary(@employees) * multiplier
    bonus
  end

  protected 

  def total_salary
    total_salary = 0
    @employees.each do |employee|
      if employee.is_a?(Manager)
        total_salary += employee.salary + employee.total_salary
      else 
        total_salary += employee.salary
      end
    end
    total_salary
  end

end


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000