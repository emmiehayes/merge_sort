require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_it_has_a_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_it_can_have_integer_value
    card = Card.new(3, "Diamonds")
    assert_equal 3, card.value
  end

  def test_it_has_a_suit
    card = Card.new(3, "Diamonds")
    assert_equal "Diamonds", card.suit
  end
end
