class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
#Sum of two sides is greater than the third side
  def equilateral_checker?
    # side1 = 3
    # side2 = 5
    # side3 = 10
    if @side1 == @side2 && @side2 == @side3
      return true
    else
      return false
    end
  end

  def isosceles_checker?
    
  end


end
