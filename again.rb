#Observer
class Employee
  attr_reader :name
  attr_accessor :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def salary=(salary)
    @salary = salary
    notify_observers
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end
end

class Payroll

  def update(changed_employee)
    puts "cut a new salary form for #{changed_employee.name}"
    puts "his salary is now: #{changed_employee.salary}"
  end
end

#TESTING

claudiu = Employee.new('Claudiu', 'intern ruby', 5000)
p claudiu
account = Payroll.new
claudiu.add_observer(account)
claudiu.salary = 23400
