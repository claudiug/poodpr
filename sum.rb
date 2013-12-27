data = [23, 21, 23, 45, 41, 12, 55]
sum = data.reduce(0){|acc, n| acc + n}
puts sum
puts data.reduce(:+)

class Foo
  attr_reader :read_only_attr
  attr_writer :write_only_attr
  attr_accessor :read_write_attr
  def self.logger
    @logger
  end

  def self.logger=(new_logger)
    @logger = new_logger
  end

end

