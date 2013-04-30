def palindrome
  x= 999
  y= 999
  a=[]
  while(x >= 0)
    while(y >= 0)
      a.push(x * y) if (x*y).to_s == (x*y).to_s.reverse

      y -= 1
    end
    x-=1
  end
  return a
end

def prime
  x= 1
  a=[]
  j=[]
  while(a.length < 10002)
    (1..x).to_a.each do |i|
      if x%i == 0
        j.push(i)
      end
    end
    a.push(x) if j.length <= 2
    j= []
    x+=1
  end
  return a[10000]
end

# prime()

def triangular

end

#  theory- in a (1..x) where x=1

#then x+=1

#we get each do |i|
#i + = 1
#end
#
#number 1
def mult35(x)
  a= []
  (1..x-1).to_a.each do |i|

    if i%3 ==0 || i%5 == 0
      a.push(i)
    end
  end
  a.reduce(:+)
end
# number 2
def fibonacci(x)
  a = [1,2]
  i = 0
  c= []

  while a[i] < x
    i += 1
    a.push(a[i - 1] + a[i -2]) if i > 1
  end
  a.each do |i|
    c.push(i) if i%2 == 0
  end
  c.reduce(:+)
end
#fibonci of 4 mil, is 4612732 the sum of the evne terms
# number 3
def prime_factor(x)
  a= []
  prime = []
  (1..x).to_a.each do |i|
    if x%i ==0
      a.push(i)
    end
  end
  # a is all the factors.
  a.each do |d|
    array = []
    (1..d).to_a.each do |f|
      if d%f ==0
        array.push(f)
      end
    end
    prime.push(d) if array.length == 2
  end
  return prime.max
end #this will take too long, but the sample #s check out 13195 yields 29
#number 4s
def palindrome
  array = []
  j = 0
  while j < 1000
    (1..999).to_a.each do |i|
      p = i * j
      array.push(p) if p.to_s.split(//) == p.to_s.split(//).reverse
    end
    j += 1
  end
  return array.max
end
#906609
def smallest_multiple
  factor = 0
  multiple = 1
  while factor < 20 #while there's less than 10 factors
    (1..20).to_a.each do |i|
      if multiple % i == 0 # divsibility
        factor += 1 #increment your factor
      else
        multiple += 1
        factor = 0
      end
    end
  end
  return multiple
end
#23792560

#number 6
def sum_square_difference(x)
  array= (1..x).to_a
  p = array.reduce(:+)**2
  g = array.map{|i| i**2}
  g = g.reduce(:+)
  difference = p - g
end
#25164150

def is_prime(num)
  factor = 0
  (1..num).to_a.each do |i|
    if num % i == 0
      factor += 1
    end
  end

  if factor ===2
    return true
  else
    return false
  end

end

# 7
def primes(number)
  a= []
  j= 1
  while a.length < number
    if is_prime(j)
      a.push(j)
      j += 1
    else
      j += 1
    end
  end
  return a.last
end
#this is taking too long
def longass
  number = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

  number = number.to_s.split(//).map!{|i| i.to_i}
  #number is in array form
  first = 0
  last = 4
  c = []
  while last < number.length
    c.push([(number[first..last]).reduce(:*), first, last])
    first += 1
    last +=1
  end
  return c.max #will give number and the indicies.
end
#40824

# def pythagorean
#   a= 0.0
#   b= 0.0
#   c= 0
#  pythag = [a,b,c]

def pythagorean
  array= []
  a = (1..1000).to_a
  b= (1..1000).to_a
  j = 0
  # below we get an array of all values of a and b upto 1000 where b> a
  while j < 1000
    a.each do |i|
      array.push([i, j]) if j > i
    end
    j+=1
  end
  # for each of the values we select the values that are perfect squares. we push these values into another array.
  pythags = []
  array.each do |i|
    c_squared = i[0]**2 + i[1]**2
    c = Math.sqrt(c_squared)
    if c.to_s.split(//).last == "0"
      pythags.push([i[0], i[1], c.to_i]) if (i[0] + i[1] + c.to_i == 1000)
    end
  end

  puts "For the array #{pythags.first}, our product is #{pythags.first.reduce(:*)}."  #the sum of those 3 is 1000xs
end

#10
def sum_primes(number)
  primes = []
  array = (1..number-1).to_a
    array.each do |i|
     primes.push(i) if is_prime(i)
  end
  primes.reduce(:+) #returns sum of primes
end
#this takes a while to compute if u use 2,000,000.
