require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def setup
    @card = Card.new("Ace", "Spades")
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_it_has_a_value
    assert_equal "Ace", @card.value
  end

  def test_it_has_a_suit
    assert_equal "Spades", @card.suit
  end
end
