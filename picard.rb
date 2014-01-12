require 'logger'
class Picard
  def make_it_so(log = Logger.new($stdout))
    log.info 'Hmm some tea for me please!'
    Georgi.new(log).fix_it
  end
end

class Georgi
  def initialize(log)
    @log = log
  end
  def fix_it
    @log.info 'Yes, I will fix it'
    @log.info 'the cat is sleeping'
    Barclay.new(@log).monitor_sensors 
  end
end

class Barclay
  def initialize(log)
      @log = log
  end

  def monitor_sensors
      @log.warn 'omg omg omg'
  end
end

p Picard.new.make_it_so