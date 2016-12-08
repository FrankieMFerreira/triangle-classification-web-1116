class Triangle
  attr_accessor :side1, :side2, :side3, :triangle_sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle_sides = []
    @triangle_sides << side1
    @triangle_sides << side2
    @triangle_sides << side3
  end

  def kind
    if valid?
      if @triangle_sides.uniq.count == 1
        return :equilateral
      elsif @triangle_sides.uniq.count == 2
        return :isosceles
      elsif @triangle_sides.uniq.count == 3
        return :scalene
      end
    end
  end

end

  def valid?
    if @triangle_sides.any? {|side| side <= 0}
      false
      raise TriangleError.new
    elsif @triangle_sides.sort[0]+ @triangle_sides.sort[1] <= @triangle_sides.sort[2]
      false
      raise TriangleError.new
    else
      true
    end
  end


  class TriangleError < StandardError
    def initialize
      "Error"
    end
  end
