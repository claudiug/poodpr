module SomeFramework
  class Gear
    attr_reader :rim, :tire
    def initialize(rim, tire)
      @rim = rim
      @tire = tire
    end
  end
end

module GearWrapper
  def self.gear(args)
    SomeFramework::Gear.new(args[:rim], args[:tire])
  end
end
p GearWrapper.gear(rim:12, tire: 23)