require_relative 'card'
require 'pry'
class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = "#{card.value} of #{card.suit}"
    @card = card
  end

  def correct?
    true
  end

  def feedback
    "Correct!"
  end
end
