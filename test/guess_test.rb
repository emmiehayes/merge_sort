require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_instance_of Guess, guess_1

    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    assert_instance_of Guess, guess_2
  end

  def test_guess_1_has_attributes
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_equal "10 of Hearts", guess_1.response
    assert_equal card_1, guess_1.card
  end

  def test_guess_2_has_attributes
    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    assert_equal card_2, guess_2.card
    assert_equal "Queen", guess_2.card.value
  end

  def test_attribute_card_1_has_a_value
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)
    assert_equal card_1, guess_1.card
    assert_equal "10", guess_1.card.value
  end

  def test_attribute_card_2_has_a_value
    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    assert_equal card_2, guess_2.card
    assert_equal "Queen", guess_2.card.value
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
    assert_equal "Correct!", guess_1.feedback
  end

  def test_feedback_when_guess_is_incorrect
    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)
    assert_equal "Incorrect!", guess_2.feedback
  end
end
