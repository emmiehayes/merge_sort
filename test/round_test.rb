require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/guess'
require './lib/round'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @deck = Deck.new([@card_1, @card_2])
    @deck << @card_1
    @deck << @card_2
    @round = Round.new(@deck)
    @guess = Guess.new("3 of Hearts", @card_1)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_has_a_deck
    assert_equal @deck, @round.deck
  end

  def test_guesses_stored_in_array
    assert_equal [], @round.guesses
  end

  def test_it_has_a_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_it_can_track_all_guesses_made
    assert_equal @guess, @round.record_guess("3 of Hearts")
  end
end



#spec-to-follow-below:
# round.record_guess("3 of Hearts")
# => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="3", @suit="Hearts">, @response="3 of Hearts">
# round.guesses.count
# => 1
# round.guesses.first.feedback
# => "Correct!"
# round.number_correct
# => 1
# round.current_card
# => #<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">
# round.record_guess("Jack of Diamonds")
# => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">, @response="Jack of Diamonds">
# round.guesses.count
# => 2
# round.guesses.last.feedback
# => "Incorrect."
# round.number_correct
# => 1
# round.percent_correct
# => 50
# end
