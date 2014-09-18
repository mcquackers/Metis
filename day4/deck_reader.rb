require "./card"
require "./deck"

class DeckReader
  def initialize(file_name)
    @file = File.open(file_name, "r")
    @number_of_decks = get_line.to_i
  end

  def get_decks
    @number_of_decks.times.map do |number|
      read_decks
    end
  end

  def read_decks
    deck_name = get_line
    Deck.new({name: deck_name, cards: read_cards})
  end

  def read_cards
    number_of_cards = get_line.to_i
    number_of_cards.times.map do 
      Card.new({front: get_line, back: get_line})
    end
  end

  def get_line
    @file.gets.chomp
  end
  #def list_lines
  #@file.each_with_index do |line, index|
  #puts "#{index + 1}: #{line}"
  #end
  #end
end
