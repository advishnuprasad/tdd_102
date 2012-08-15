class Calculation
  
  # not an active record model

  def initialize(a=0, b=0)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end

  def subtract
    @a - @b
  end

  def multiply
    @a * @b
  end

end