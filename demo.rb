class Car
  attr_reader :engine

  def initialize
    @state = :off
    @engine = Engine.new(self)
  end

  def start
    @state = :on
    puts "whirr"
    @engine.start
  end

  def diagnostics(info)
    puts "Diagnostics: #{info}"
  end
end

class Engine
  def initialize(car)
    @state = :off
    @car = car
  end

  def start
    @state = :on
    puts "vroom vroom"
    @car.diagnostics(@state)
  end
end


my_car = Car.new

my_car.start
