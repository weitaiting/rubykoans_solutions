# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # Triangles can't have negative length sides
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError
  # Any 2 sides of a triangle must be larger than the last side
  elsif not (((a + b) > c) and ((a + c) > b) and ((b + c) > a))
    raise TriangleError
  end
  triangle_mapping = {0 => :scalene, 1 => :isosceles, 3 => :equilateral}
  sum = 0
  sum += 1 if a == b
  sum += 1 if b == c
  sum += 1 if a == c
  return triangle_mapping[sum]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
