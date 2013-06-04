
@months = {:january => 1, :february => 4, :march => 4, :april => 0, :may => 2, :june => 5, :july => 0, :august => 3, :september => 6, :october => 1, :november => 4, :december => 6 }
@centuries = [6, 4, 2, 0]
@daysofweek = ["Saturday", "Sunday","Monday", "Tuesday", "Wednesday",  "Thursday", "Friday"]


def leap_year(year)
  if year%4 == 0
    return true
  else
    return false
  end
end

def yr_code(yr_day, cent_code)
  return (((yr_day + cent_code) % 7 ) + (yr_day / 4)) % 7
end


def doomsday
  puts "Enter the month (i.e January/February)"
  month = gets.chomp.downcase
  puts "Enter the date."
  date = gets.chomp.to_i
  puts  "Enter the year."
  yr = gets.chomp.to_i


  month_code = @months[month.to_sym]
  cent_code = @centuries[(yr.to_i/100)% 4]
  yr_day = (yr % 1000).to_i

  yr_code = yr_code(yr_day, cent_code)

  day = leap_year(yr)  ?  (yr_code + month_code + date ) % 7 -1 : (yr_code + month_code + date ) % 7
  return "#{month.capitalize} #{date}, #{yr} falls on a #{@daysofweek[day]}"

end
