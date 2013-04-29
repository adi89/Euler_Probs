
def func
  puts "enter number: "
  x= gets.chomp.to_i
  a = (1..x).to_a


  a.each do |i|
    if i%5 == 0 && i%3 == 0
      puts "fizzbuzz"
    elsif i%5 == 0
      puts "fizz"
    elsif i%3 == 0
      puts "buzz"
    else
      puts i
    end
  end
end

def blah
  puts 'enter string'
  x= gets.chomp.to_s
  puts x
end

def num
  puts 'whats you number?'
  x= gets.chomp.to_i

  x = (1..x).to_a

  return x.map{|i| i*10 }

end


def fuckedup

  puts 'whats you number?'
  x= gets.chomp.to_i

  x = (1..x).to_a

  x.each do |i|
    if i > 0
      puts "#{i}" if x[i] > x[i-1]
    end
  end

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




  end




  # puts "The max of #{x} is  #{x.max}"

end
