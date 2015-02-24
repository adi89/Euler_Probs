require 'pry-byebug'
require 'rainbow'

def triangle(array = array_string)
  @triangle ||= integer_array(array)
end

def main
  puts Rainbow(array_string).green
  puts Rainbow("The maximum sum for all the paths in the triangle is #{highest_sum}").red.bright.underline
end


def highest_sum
  @highest_sum ||= highest_sum_array_manipulation
end

private

def highest_sum_array_manipulation
  (second_to_last_row).downto(0) do |row|
    triangle[row].each_with_index do |element, column|
      triangle[row][column] += maximum_adjacent_values(triangle[row + 1][column], triangle[row + 1][column + 1] )
    end
  end
  first_element
end

def first_element
  triangle[0].first
end

def second_to_last_row
  triangle.length - 2
end

def maximum_adjacent_values(*args)
  args.compact.max
end

def integer_array(array_string)
  string_array = array_string.split("\n")
  separated_string_array = string_array.map{|row| row.split(" ")}
  separated_string_array.map{|row| row.map(&:to_i) }
end

def sample_string
<<-EOS
3
7 4
2 4 6
8 5 9 3
EOS
end

def array_string
  <<-EOS
  75
  95 64
  17 47 82
  18 35 87 10
  20 04 82 47 65
  19 01 23 75 03 34
  88 02 77 73 07 63 67
  99 65 04 28 06 16 70 92
  41 41 26 56 83 40 80 70 33
  41 48 72 33 47 32 37 16 94 29
  53 71 44 65 25 43 91 52 97 51 14
  70 11 33 28 77 73 17 78 39 68 17 57
  91 71 52 38 17 14 91 43 58 50 27 29 48
  63 66 04 68 89 53 67 30 73 16 69 87 40 31
  04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
  EOS
end

main
