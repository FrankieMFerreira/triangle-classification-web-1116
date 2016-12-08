class Triangle
  attr_accessor :side1, :side2, :side3, :triangle_sides

  def initialize(side1, side2, side3)
    @triangle_sides = []
    @triangle_sides << side1
    @triangle_sides << side2
    @triangle_sides << side3
  end

  def kind
     valid?
      case @triangle_sides.uniq.count
      when 1
       :equilateral
      when 2
       :isosceles
      else
       :scalene
    end
  end

end

  def valid?
    if @triangle_sides.any? {|side| side <= 0}
      raise TriangleError.new
    elsif @triangle_sides.sort[0]+ @triangle_sides.sort[1] <= @triangle_sides.sort[2]
      raise TriangleError.new
    end
  end


  class TriangleError < StandardError
    def initialize
      "Error"
    end
  end
