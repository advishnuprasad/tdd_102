class CalculationsController < ApplicationController

  def index
  end

  def calculate
    op = params[:op_id]
    a = params[:a].to_f
    b = params[:b].to_f
    calc = Calculation.new(a, b)

    case op
    when '1'
      @result = calc.add
    when '2'
      @result = calc.subtract
    when '3'
      @result = calc.multiply
    else 
      @result = calc.add
    end
  end

  #skinny
  def calculate_better
    op = params[:op_id]
    a = Operand.new(params[:a].to_f)
    b = Operand.new(params[:b].to_f)
    @result = a.operate(b, op)
  end

end