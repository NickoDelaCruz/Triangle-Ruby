
class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

#Sum of two sides is greater than the third side
  def test_triangle
    if @side1.eql?(@side2) && @side2.eql?(@side3)
      "It's an equilateral"
    elsif @side1.eql?(@side2) || @side2.eql?(@side3)
      "It's an isosceles"
    elsif @side1.eql?(@side2) == false && @side2.eql?(@side3) == false
      "It's a scalene triangle"
    else
      "Not a triangle"
    end
  end
end
