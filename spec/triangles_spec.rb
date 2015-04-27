require('rspec')
require('pry')
require('triangles')

describe (Triangles) do
  describe ("#initialize")  do
    it("initializes triangle") do
      expect(Triangles.new(3, 3, 3)).to(eq([3, 3, 3]))
    end
    it("checks that it's a valid triangle") do
      expect(Triangles.new(2, 2, 8)).to(eq(false))
    end
  end
  describe ("#type") do
    it("checks type of triangle for equilaterals") do
      my_equilateral = Triangles.new(3, 3, 3)
      expect(Triangles.type()).to(eq("equilateral"))
    end
  end
end
