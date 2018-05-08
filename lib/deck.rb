class Deck

  attr_reader :cards

  def initialize(card)
    @cards = []
  end

  def <<(card)
    @cards << card
  end

  def count
    @cards.length
  end
end
