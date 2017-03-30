class Triangle
  
  def initialize(side_1, side_2, side_3)
    @sides = [] 
    @sides <<  side_1 << side_2 << side_3 
  end

  def kind
    
    if @sides.any? {|side| side <= 0 || side >= @sides.sort[0] + @sides.sort[1]}  
      raise TriangleError
    elsif @sides.all? {|side| side == @sides[0]}
      return :equilateral
    elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2] 
      return :isosceles
    elsif @sides[0] != @sides[1] && @sides[1] != @sides[2] && @sides[2] != @sides[1]
      return :scalene
    end
    
  end

  
end

class TriangleError < StandardError
  
end
