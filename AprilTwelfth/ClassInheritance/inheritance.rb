class Employee
  def initialize
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
    bonus
  end
end


class Manager < Employee
  def initialize
    @employees = []
  end

  def bonus(multiplier)
    bonus = 
  end

end