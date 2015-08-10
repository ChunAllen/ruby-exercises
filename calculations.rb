class Calculation

  OPERATORS = { add: "+", minus: "-", multiply: "*", divide: "/" }

  attr_accessor :operands

  def initialize(*args)
    @operands = args
  end

  OPERATORS.each do |key, value|
    define_method key.to_s do
      @operands.inject(value.to_sym)
    end
  end

end
