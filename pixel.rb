require 'pry-debugger'

b= (1..10).to_a.map!{|i| false}
a = [false, false, false, false, true, false, false, false, false, false]
@matrix = [b, b, b, b, a, b, b, b, b, b]
#largest square with no dead pixels
#takes in matrix

def larges_sq_w_no_dead_pixels(matrix)
  coordinates = []
  x = 0
  y = 0
  matrix.each do |i|
    i.each do |j|
      if j==true
        coordinates = [x,y]
      end
      y += 1
    end
    x += 1
    y = 0
  end
  sq_area_max(coordinates, @matrix.length)
end

#so now we want to divide the 4 squares and from there check the coordinates of those to find a dead pixel..and if that DOESN't exist, then calculate the area.
def sq_area_max(coordinates, matrix_length)
  binding.pry
  area = matrix_length ** 2
  right = (matrix_length-1) - coordinates[0]
  left = (matrix_length - 1) - right
  top= (matrix_length-1) - coordinates[1]
  bottom= (matrix_length -1) - top
  return [top* right, top*left, bottom * right, bottom*left].max
end
