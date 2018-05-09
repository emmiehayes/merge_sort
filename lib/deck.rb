require 'pry'
class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def face_card_value_to_number
    count.times do |index|
      if @cards[index].value == "Ace"
         @cards[index].value = "99"
      elsif @cards[index].value == "King"
        @cards[index].value = "98"
      elsif @cards[index].value == "Queen"
        @cards[index].value = "97"
      elsif @cards[index].value == "Jack"
        @cards[index].value = "96"
      end
    end
  end


  def sort
  return @cards if @cards.size <= 1
  sorted = true
    while sorted do
    sorted = false
    (count - 1).times do |index|
      face_card_value_to_number
      if @cards[index].value > @cards[index + 1].value
         @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
         sorted = true
      end
     end
    end
    @cards
  end
end
