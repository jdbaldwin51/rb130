class Triangle
  attr_reader :sides

  def initialize(s1,s2,s3)
    @sides = [s1, s2, s3]
    raise ArgumentError.new("not a valid Triangle") unless valid_triangle?
  end

  def kind
    case sides.uniq.length
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else  'scalene'
    end
  end

  def to_s
    "#{self.class} with side lengths: #{sides}, is an #{kind} triangle."
  end
  private
  def valid_triangle?
     sides.min > 0 &&
     sides[0] + sides[1]  > sides[2] &&
     sides[1] + sides[2] > sides[0] &&
     sides[0] + sides[2] > sides[1]
  end
end
