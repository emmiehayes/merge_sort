require 'pry'
class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def sort
  return @cards if @cards.size <= 1
  sorted = true
    while sorted do
    sorted = false
    (count - 1).times do |index|
      if @cards[index].value > @cards[index + 1].value
         @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
         sorted = true
      end
     end
    end
    @cards
  end
end
