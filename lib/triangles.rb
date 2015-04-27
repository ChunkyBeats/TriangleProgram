class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # define_method(:is_triangle?) do
  #   if @side1.+(@side2) >= @side3 && @side1.+(@side3) >= @side2 && @side2.+(@side3) >= @side1
  #     return true
  #   else
  #     return false
  #   end
  # end

  define_method(:sides) do
    return @side1, @side2, @side3
  end

  define_method(:typetriangle) do
    if @side1.+(@side2) >= @side3 && @side1.+(@side3) >= @side2 && @side2.+(@side3) >= @side1
      if @side1 == @side2 && @side1 == @side3
        "equilateral"
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        "isosceles"
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        "scalene"
      end
    else
       "Is not a triangle"
    end
  end
end
