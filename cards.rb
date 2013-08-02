require 'pry-debugger'

@suits = ['hearts', 'clubs', 'spades', 'diamonds']


@cards = {}

def giveCard
  (1..10).each{ |i|  @cards["#{i}"] = i }
  @cards['11'] = 'Jack'
  @cards['12'] = 'Queen'
  @cards['13'] = 'King'
  @cards['1'] = 'Ace'
  return @cards
end

def theDeck
  singles = giveCard()
  @suits.each do |i|
    (1..13).each do |j|
      puts "#{singles[j.to_s]} of #{i.capitalize} "
    end
    puts " "
  end

end

theDeck()