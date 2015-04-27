require('rspec')
require('pry')
require('triangles')

describe (Triangles) do
  describe ("#initialize")  do
    it("initializes triangle") do
      my_triangle = Triangles.new(3, 3, 3)
      expect(my_triangle.sides()).to(eq([3, 3, 3]))
    end
  end

  # describe("#is_triangle?") do
  #   it("checks that it's a valid triangle") do
  #     my_triangle = Triangles.new(2, 2, 8)
  #     expect(my_triangle.is_triangle?()).to(eq(false))
  #   end
  # end

  describe ("#typetriangle") do
    it("checks type of triangle for equilaterals") do
      my_equilateral = Triangles.new(3, 3, 3)
      expect(my_equilateral.typetriangle()).to(eq("equilateral"))
    end
  end

  describe ("#typetriangle") do
    it("checks type of triangle for isosceles") do
      my_isosceles = Triangles.new(3, 2, 2)
      expect(my_isosceles.typetriangle()).to(eq("isosceles"))
    end
  end

  describe ("#typetriangle") do
    it("checks type of triangle for scalene") do
      my_scalene = Triangles.new(1, 2, 3)
      expect(my_scalene.typetriangle()).to(eq("scalene"))
    end
  end

  describe ("#typetriangle") do
    it("checks type of triangle for invalid shape") do
      my_weirdshape = Triangles.new(2, 2, 8)
      expect(my_weirdshape.typetriangle()).to(eq("Is not a triangle"))
    end
  end

end
