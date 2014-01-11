module StackLike
  attr_reader :stack
  def stack
    @stack ||= []
  end

  def add_to_stack(object)
    stack.push(object)
  end

  def take_from_stack
    stack.pop
  end

  def to_s
    @stack.each{|s| puts s}
  end
end

class Demo
  include StackLike
end

demo = Demo.new
demo.add_to_stack(1)
demo.add_to_stack(2)
demo.add_to_stack(3)
puts demo.stack