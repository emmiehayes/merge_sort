require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @card_3 = Card.new("5", "Diamonds")
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @deck << @card_1
    @deck << @card_2
    @deck << @card_3
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it
    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_it_has_three_cards
    assert_equal 3, @deck.count
  end
end
