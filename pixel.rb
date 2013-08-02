require 'pry-debugger'

b= (1..10).to_a.map!{|i| false}
a = [false, false, false, false, true, false, false, false, false, false]
@matrix = [b, b, b, b, a, b, b, b, b, b]
#largest square with no dead pixels
#takes in matrix

def larges_sq_w_n o_dead_pixels(matrix)
  sq_areas = []
  x = 0
  y = 0
  matrix.each do |i|
    i.each do |j|
      if j==true
        coordinates = [x,y]
        get_matricies(coordinates, matrix)
      else
        sq_areas.push(matrix)
      y += 1
    end
    x += 1
    y = 0
  end
  sq_area_max(coordinates, @matrix.length)
end


#so now we want to divide the 4 squares and from there check the coordinates of those to find a dead pixel..and if that DOESN't exist, then calculate the area.

#so you need to take what's uptil that point on the sub_matrix.
#from there, we recurse until there's no more dead pixels. we take the top bottom, left and right of each and
def sq_area_max(coordinates, matrix_length)
  binding.pry
  area = matrix_length ** 2
  right = (matrix_length-1) - coordinates[0]
  left = (matrix_length - 1) - right
  top= (matrix_length-1) - coordinates[1]
  bottom= (matrix_length -1) - top
  return [top* right, top*left, bottom * right, bottom*left].max
end

# def get_matricies(coordinates, matrix)
# coordinates[0]..matrix. ,

# end



