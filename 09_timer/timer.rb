
class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    convert_time
    converted = ""
    arr = [@hours, @minutes, @seconds]

    while arr.size > 0
      time_type = arr.shift
      if time_type < 10
        converted += "0#{time_type}:"
      else
        converted += "#{time_type}:"
      end
    end

    converted[0..-2]
  end

  def convert_time
    @hours = 0
    @minutes = 0

    while @seconds >= 60
      if @seconds >= 3600
        @hours += 1
        @seconds -= 3600
      else
        @minutes += 1
        @seconds -= 60
      end
    end
  end

end