def secondlargest
  puts 'whats you number?'
  x= gets.chomp.to_i

  x = (1..x).to_a
  max = x.first


  x.each do |i|
    if i > max
      max = i
    end
  end
  max2 = x[0]
  x.each do |i|
    if i != max
      if i > max2
        max2 = i
      end
    end
  end
  puts max2
end

def average
  puts 'whats you number?'
  x= gets.chomp.to_i

  x = (1..x).to_a
  a = 0
  b = 0
  x.each do |i|
    a += i
    b += 1
  end
  c = a/b
  puts "average: #{c}"
end

def sleep_in(is_weekday, is_vacation)

  if is_weekday && is_vacation
    true
  elsif is_vacation
    true
  else
    false
  end
end


def nearHundred(n)
  if n >= 90 && n < 100
    true
  else
    false
  end
end



def missingChar(string, index)
  #removes that character at that index
  string = string.split(//)
  string.delete_at(3)
  string.join
end

def backAround(string)
  #reverse. takes last char and puts in front.
  array = string.split(//)
  d= array.pop
  array.unshift(d)
  result = array.join
end

def delDel(string)
  #finds sequences of del and removes from output.
  string.gsub("del","")
end

def close10(a,b)
  # that is closest to 10 is output
  diff1= 10 - a
  if diff1 < 0
    diff1 *= -1
  end
  diff2 = 10 - b
  if diff2 < 0
    diff2 *= -1
  end
  if diff1 < diff2
    return a
  else
    return b
  end

end

def stringE(s)
  j=0
  #1,2,3 E's in strings then true. else it's false.
  a = s.split(//)
  a.each do |i|
    if i == "e"
      j+=1
    end
  end

  if j > 0 && j <= 3
    return true
  else
    return false
  end

end


def lastDigit(a,b)
  #reutn true if last digit is the same
  if a.to_s.split(//).last == b.to_s.split(//).last
    return true
  else
    return false
  end
end


def arrayCount9(a)
  v=0
  a.each do |i|
    if i == 9
      v += 1
    end
  end
  return v
end

def noTriples(a)
  j= 0
  #returns true if array does not have 3 consecutive instances of the same number.
  a.each do |i|
    if j > 2
      if i == a[j -1] && i == a[j-2]
        return false
      end
    end
    j+=1
  end
  return true
end



def makePi
  f= 3.141592
  f.to_s.split(//).take(4).join.to_f
end

def rotateLeft(array, amount)
  #motes the amount of items in front of the array and puts them at the end and return a new array.
  b= array.reverse
  in_front = b.pop(amount)
  d= b.unshift(in_front).flatten
  result = d.reverse.flatten
end



def countEvents(array)
  j = 0
  array.each do |i|
    if i%2 ==0
      j += 1
    end
  end
  return j
end

def bigDiff(array)
  j = 0
  array.each do |i|
    if i > j
      j = i
    end
  end
  max = j
  array.delete(max)
  second_largest = array.max
  return (max - second_largest)
end

def averageMedian(array)
  if array.count > 3
    array.delete_at(0)
    array.delete_at(array.count-1)
    averageMedian(array)
  elsif array.count == 3
    return (array.reduce(:+).to_f/3.0)
  elsif array.count ==2
    return (array.reduce(:+).to_f/2.0)
  end
end

def canBalance(array)
  string = array.join

  array.each do |i|
    derp = string.split(i.to_s)
    if derp[0].to_i == derp[1].to_i
      return true
    end
  end
  return false
end

def avgMirror(array)
  b= array.reverse
  j= 0
  d=[]
  c =[]
  final = []
  array.each do |i|
    c.push(i)
    d.push( c[0..c.length-1] )
  end

  # reverse = d.map{|i| i.reverse}
d
  # t= []
  # y = []
  # b.each do |i|
  #   t.push(i)
  #   y.push( t[0..t.length-1] )
  # end
  # # is the opposite
  # y

#    d.each do |i|
#      y.each do |h|
# #     if i == h
#          final.push(i)
#        end
#      end
#    final
end

#so first we want [1] [1,2] [1,2,3]



#ok gameplan. We get every length of the array going forward. so there'l be like 9 arrays if there's 9 values. we evaluate to see if the reverse 9 values arrays matches up, if it does we take the one with the larger value and average that.
