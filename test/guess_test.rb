require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_it_has_a_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_it_has_a_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10", guess.card.value
  end

  def test_it_is_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert guess.correct?
  end

  def test_it_is_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
  end
end


# guess.card
# => #<Card:0x007ffdf1820a90 @value="10", @suit="Hearts">
