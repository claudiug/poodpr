class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts "Duck #{@name} is eating"
  end

  def speak
    puts "Duck #{@name} says Quack!"
  end

  def sleep
    puts "Duck #{@name} sleepy quietly"
  end
end

class Pond
  def initialize(numbers_of_ducks)
    @animals = []
    numbers_of_ducks.times do |i|
      animal = new_animal("Animal: #{i}")
      @ducks << animal
    end
  end

  def simulate_one_day
    @ducks.each {|duck| duck.speak}
    @ducks.each {|duck| duck.eat}
    @ducks.each {|duck| duck.sleep}
  end
end

class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts "A Frog #{@name} eat"
  end

  def speak
    puts "A Frog #{@name} speak"
  end

  def sleep
    puts "A frog #{@name} sleeeeeeppp"
  end
end

class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end

class FrogPond < Pond
  def initialize(name)
    @name = name
  end

  def eat
    puts "A Frog #{@name} eat"
  end

  def speak
    puts "A Frog #{@name} speak"
  end

  def sleep
    puts "A frog #{@name} sleeeeeeppp"
  end
  def new_animal(name)
    Frog.new(name)
  end
end

pond = FrogPond.new(3)
pond.simulate_one_day