class Card

  attr_accessor :value
  attr_reader :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end
