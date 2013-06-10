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

