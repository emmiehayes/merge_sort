require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_instance_of Guess, guess_1
  end

  def test_it_has_attributes
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_equal "10 of Hearts", guess_1.response
    assert_equal card_1, guess_1.card
  end

  def test_it_has_a_card_that_has_attributes
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_equal "10", guess_1.card.value
    assert_equal "Hearts", guess_1.card.suit
  end

  def test_it_can_concatenate_the_card_attributes
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_equal "10 of Hearts", guess_1.concat_card_attributes
  end

  def test_correct_guess
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert guess_1.correct?
  end

  def test_incorrect_guess
    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    refute guess_2.correct?
  end

  def test_feedback_when_guess_is_correct
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert guess_1.correct?
    assert_equal "Correct!", guess_1.feedback
  end

  def test_feedback_when_guess_is_incorrect
    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    refute guess_2.correct?
    assert_equal "Incorrect!", guess_2.feedback
  end
end
