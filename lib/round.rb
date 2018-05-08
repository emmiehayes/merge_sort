require 'pry'
class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(guess)
    @guesses << guess
  end
end
