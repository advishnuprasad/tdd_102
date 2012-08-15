class Operand
  attr_reader :val

  def initialize(val=0)
    @val = val
  end

  def operate(a, op_id)
    case op_id
    when '1'
      add(a)
    when '2'
      subtract(a)
    when '3'
      multiply(a)
    end
  end

  def add(a)
    Calculator.add(@val, a.val)
  end

  def subtract(a)
    Calculator.subtract(@val, a.val)
  end

  def multiply(a)
    Calculator.multiply(@val, a.val)
  end

end