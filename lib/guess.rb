class Guess
  attr_reader :card,
              :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def concat_card_attributes
    card.value + " of " + card.suit
  end

  def correct?
    @response == concat_card_attributes
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect!"
    end
  end
end
