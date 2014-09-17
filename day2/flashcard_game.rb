require "./deck"
require "./card"
class FlashcardGame
  def initialize(decks)
    @decks = decks
  end

  def play
    loop do
      list_out_decks

      deck = ask_user_which_deck

      if deck
        puts "Would play #{deck.name}"
        deck.play
      else
        puts "Exiting"
        break
      end

    end

  end
  
  private

  def ask_user_which_deck
    print "Select a deck to play (leave blank to quit): "
    requested_deck_name = gets.chomp
    @decks.find {|deck| deck.name.downcase == requested_deck_name.downcase}
   # deck = @decks.find do |deck|
   #   deck.name == requested_deck_name
   # end
  end

  def list_out_decks
    @decks.each do |deck|
      puts deck.name
    end
  end

end

japanese_cards = []
japanese_cards << Card.new({front: "Neko", back: "Cat"}) << Card.new({front: "Inu", back: "Dog"})
spanish_cards = []
spanish_cards << Card.new({front: "Perro", back: "Dog"}) << Card.new({front: "Gato", back: "Cat"})
decks = []
decks << Deck.new({name: "Spanish", cards: spanish_cards}) << Deck.new({name: "Japanese", cards: japanese_cards})

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play
