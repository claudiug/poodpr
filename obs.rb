module Subject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

class Employee
  include Subject
  attr_reader :name, :address, :salary

  def initialize(name, address, salary)
    super()
    @name = name
    @address = address
    @salary = salary
  end

  def salary=(salary)
    @salary = salary
    notify_observers
  end
end

class Payroll
  def update(changed_employee)
    puts "cut a new salary form for #{changed_employee.name}"
    puts "his salary is now: #{changed_employee.salary}"
  end
end

claudiu = Employee.new('Claudiu', 'junior', 300)
payroll = Payroll.new
claudiu.add_observer(payroll)
claudiu.salary =3400
claudiu.notify_observers