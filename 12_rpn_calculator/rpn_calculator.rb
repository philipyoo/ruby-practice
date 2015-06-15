
class RPNCalculator
  def initialize
    @calc_arr = []
  end

  def calc_error
    raise ArgumentError.new("calculator is empty") if @calc_arr.size < 2
  end

  def push(num)
    @calc_arr << num
  end

  def plus
    calc_error
    @calc_arr << @calc_arr.pop(2).inject(0) {|sum,x| sum + x}
  end

  def minus
    calc_error
    @calc_arr << @calc_arr.pop(2).inject {|sum,x| sum - x}
  end

  def times
    calc_error
    @calc_arr << @calc_arr.pop(2).inject {|sum,x| sum.to_f * x}
  end

  def divide
    calc_error
    @calc_arr << @calc_arr.pop(2).inject {|sum,x| sum.to_f / x}
  end

  def value
    @calc_arr[-1]
  end

  def tokens(str)
    storage = str.split(' ')
    operators = %w(+ - * /)

    storage.map! {|obj| operators.include?(obj) ? obj.to_sym : obj.to_i }
  end

  def evaluate(str)
    arr = tokens(str)
    temp = []

    until arr.size == 1 && temp.size == 0
      temp << arr.shift if arr[0].is_a?(Integer)

      case arr[0]
      when :+
        arr.shift
        temp.push(temp.pop + temp.pop)
      when :-
        arr.shift
        temp.push(-temp.pop + temp.pop)
      when :*
        arr.shift
        temp.push(temp.pop * temp.pop)
      when :/
        arr.shift
        last_num = temp.pop.to_f
        temp.push(temp.pop / last_num)
      end

      arr << temp.pop if arr.size == 0
    end

    arr.pop
  end
end