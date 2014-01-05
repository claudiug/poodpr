class Gear
  attr_reader :chairing, :cog, :rim, :tire
  def initialize(args= {})
    @chairing = args.fetch(:chairing, 40)
    @cog = args.fetch(:cog, 30)
    @rim = args.fetch(:rim, 1.4)
    @tire = args.fetch(:tire, 30)
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end

  def ratio
    chairing / cog.to_f
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim  + (tire * 2)
    
  end
end

class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each{|bike| prepare_bicycle(bike)}
  end

  def prepare_bicycle(bike)
    puts "#{bike}"
  end
end

#puts Gear.new(52, 11, 12,3).gear_inches
p Gear.new(chairing: 34, cog: 34, rim: 1.2, tire: 32).gear_inches