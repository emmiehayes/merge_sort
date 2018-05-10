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

  def test_it_has_a_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end

  def test_a_card_value_can_contain_numbers
    card = Card.new("4", "Hearts")
    assert_equal "4", card.value
    assert_equal "Hearts", card.suit
  end

  def test_card_value_is_a_string_for_comparison
    card = Card.new(4, "Hearts")
    assert_instance_of String, card.value
  end
end
