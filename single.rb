class Stuff
  @@class_count = 0

  def initialize
    @instance_count = 0
  end

  def increment
    @@class_count = @@class_count + 1
    @instance_count = @instance_count + 1
  end

  def to_s
    "class count: #{@@class_count}, instance_class_count: #{@instance_count} "
  end
end

s = Stuff.new
s.increment
s.increment
s1 = Stuff.new
puts "s1: #{s1}"
puts "s: #{s}"