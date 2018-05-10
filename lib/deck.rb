class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def define_values_above_9
    count.times do |index|
    @cards[index].value = "99" if @cards[index].value == "Ace"
    @cards[index].value = "98" if @cards[index].value == "King"
    @cards[index].value = "97" if @cards[index].value == "Queen"
    @cards[index].value = "96" if @cards[index].value == "Jack"
    @cards[index].value = "95" if @cards[index].value == "10"
    end
  end

  def sort
  return @cards if @cards.size <= 1
  sorted = true
    while sorted do
    sorted = false
    (count - 1).times do |index|
      define_values_above_9
      if @cards[index].value > @cards[index + 1].value
         @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
         sorted = true
      end
     end
    end
    @cards
  end
end
