require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_has_attributes
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_it_knows_how_many_cards_it_has
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

  def test_it_can_be_sorted_by_value
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_2, card_1, card_3], deck.sort
  end

  def test_face_cards_can_be_sorted_as_integers
    card_1 = Card.new("Queen","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("Ace", "Diamonds")
    card_4 = Card.new("King", "Spades")
    card_5 = Card.new("2", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    result = [card_5, card_2, card_1, card_4, card_3]
    assert_equal result, deck.sort
  end
end
