class FizzBuzz

  attr_accessor :num

  def initialize(number)
    @num = number
  end

  def run
    case
    when @num % 3 == 0 && @num % 5 == 0
      "Fizz Buzz"
    when @num % 3 == 0
      "Fizz"
    when @num % 5 == 0
      "Buzz"
    else
      @num
    end
  end

end
