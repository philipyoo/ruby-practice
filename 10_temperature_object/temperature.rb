
class Temperature
  attr_accessor :f, :c

  def self.from_celsius(x)
    Temperature.new(:c => x)
  end

  def self.from_fahrenheit(y)
    Temperature.new(:f => y)
  end

  def self.ftoc #dunno??
  end

  def self.ctof  #dunno??
  end

  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    if @f != nil
      return @f
    else
      (1.8 * @c) + 32
    end
  end

  def in_celsius
    if @f != nil
      (5.0/9.0) * (@f - 32)
    else
      @c
    end
  end

end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
end



# fahr = (1.8 * cel) + 32
# cel = (5.0/9.0) * (fahr - 32)