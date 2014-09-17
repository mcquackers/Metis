class Deck
  attr_reader :name

  def initialize (name, cards)
    @name = name
    @cards = cards
  end
  def play
    @cards.each {|card| card.play}
  end
end
