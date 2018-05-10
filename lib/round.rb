class Round
  attr_reader :deck, :all_guesses, :correct_guesses

  def initialize(deck)
    @deck = deck
    @all_guesses = []
    @correct_guesses = 0
  end

  def record_guess(response)
    guess = new_guess(response)
    @all_guesses << guess
    @correct_guesses += 1 if guess.correct?
    discard_current_card
    guess
  end

  def new_guess(response)
    guess = Guess.new(response, current_card)
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
end
