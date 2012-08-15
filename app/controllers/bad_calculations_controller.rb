class BadCalculationsController < ApplicationController

  #all logic  in ctrlr
  def index
  end

  def calculate
    op = params[:op_id]
    a = params[:a].to_f
    b = params[:b].to_f

    case op
    when '1'
      @result = a + b
    when '2'
      @result = a - b
    when '3'
      @result = a * b 
    when '4'
      @result = a + 2*b 
    else 
      @result = a + b
    end
  end


end