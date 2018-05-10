class Round
  attr_reader :deck, :all_guesses, :correct_guesses

  def initialize(deck)
    @deck = deck
    @all_guesses = []
    @correct_guesses = 0
  end

  def record_guess(response)
    current_guess = new_guess(response)
    @all_guesses << current_guess
    tally_correct_guess if current_guess.correct?
    discard_current_card
    current_guess
  end

  def new_guess(response)
    guess = Guess.new(response, current_card)
  end

  def tally_correct_guess
    @correct_guesses += 1
  end

  def current_card
    @deck.cards[0]
  end

  def discard_current_card
    @deck.cards.shift
  end

  def count
    @all_guesses.length
  end

  def number_correct
    @correct_guesses
  end

  def percent_correct
    @correct_guesses.to_f / count * 100
  end
end
