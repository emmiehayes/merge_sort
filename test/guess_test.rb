require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def setup
    @card = Card.new("10", "Hearts")
    @guess = Guess.new("10 of Hearts", @card)
  end

  def test_it_exists
    assert_instance_of Guess, @guess
  end

  def test_it_has_a_response
    assert_equal "10 of Hearts", @guess.response
  end

  def test_it_has_a_card
    assert_equal "10", @guess.card.value
  end

  def test_it_is_correct
    assert @guess.correct?
  end

  def test_it_guess_when_correct
    assert_equal "Correct!", @guess.feedback
  end

  def test_it_has_a_value
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal "Queen", guess.card.value
  end

  def test_it_can_recognize_incorrect
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    refute guess.correct?
  end

  def test_feedback_when_guess_is_incorrect
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal "Incorrect!", guess.feedback
  end
end
