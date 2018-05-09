require 'pry'
class Round
  attr_reader :deck,
              :guesses,
              :correct_guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = 0
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(response)
    guess = Guess.new(response, current_card)
    @guesses << guess
    @deck.cards.shift
    @correct_guesses += 1 if guess.correct?
    guess
  end

  def count
    @guesses.length
  end

  def number_correct
    @correct_guesses
  end
end
