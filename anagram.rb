require 'pry'
require 'pry-debugger'

def anagram(a,b)
  #bike
  #bikes
  looper(a.split(//), b.split(//)) && looper(b.split(//), a.split(//))

end

def looper(string_a, string_b)
  k = 0
  while (k < string_b.length)
    string_a.each do |i|
      if i == string_b[k] #if string_1's characters = the character at string 2
        string_a.slice!(string_a.index(i)) #removes first instance of that character.
      end
    end
    k += 1
  end

  if string_a.length == 0
    return true
  else
    return false
  end
end

def diveven
  (1..25).to_a.each do |i|
    k= []
    (1..1000).to_a.each do |j|
      if j%i == 0
        k.push(j)
      end
    end
    puts "There are #{k.count} numbers divisible by #{i} from 1 to 1000"
  end
end

# Exercise: Sort names by last name

# Given an array of strings that represent names in "FIRSTNAME LASTNAME" form, use sort_by and split to return an array sorted by last names. For simplicity's sake, assume that each name consists of only two words separated by space (i.e. only "John Doe" and not "Mary Jo Doe").

# names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]


# def last_name
# names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]

# end
# ignore the def last_name bit
# or if anything we can just talk about this afterwards
# i looked at the answer since I was unable to solve it
# im trying to figure out what was wrong with my rationale

def sort_name
  names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]

  names.map!{|i|i.split}.sort_by!{|i| i[1]}.map!{|i| i.join(" ")}

end

def sort_namez
  names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy", "1 2", "adi singh"]
  a= []
  names.each do |i|
    a.push(i.split)
  end

  a.sort_by!{|i| i[1]}
  j = []
  a.each do |i|
    j.push (i.join(' '))
  end
  j

end


def solution
  names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]
  sorted_names = names.sort_by do |name|
    name.split(" ").reverse.join.upcase
  end
end
