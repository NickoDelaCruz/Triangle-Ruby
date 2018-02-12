require("rspec")
require("pry")
require("triangles")
require("sinatra")

describe(Triangle) do
  describe("equilateral_checker")
    it("checks if all sides are equal to each other") do
      test_triangle = Triangle.new(5,5,5)
      expect(test_triangle.equilateral_checker?()).to(eq(true))
    end
  describe('isosceles_checker')
    it('passes if two sides are equal') do
      test_triangle = Triangle.new(5,5,2)
      expect(test_triangle.isosceles_checker?()).to(eq(true))
    end
  describe('scalene_check')
    it('passes if no sides are equal') do
      test_triangle = Triangle.new(2,5,8)
      expect(test_triangle.scalene_checker?()).to(eq(true))
    end
  describe('no_triangle')
    it('not a triangle if sum of two sides is less than or equal to the length of the third side') do
      test_triangle = Triangle.new(9,8,2)
      expect(test_triangle.no_triangle()).to(eq(false))
    end
end
