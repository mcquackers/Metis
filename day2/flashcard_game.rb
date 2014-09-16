class FlashcardGame
  def play
    loop do
      deck = ask_user_which_deck
      if deck == ''
        puts "Ending game"
        break
      else
        #        play_deck = Deck.new(deck)
         puts "Would play"
      end

    end

  end
  
  private

  def ask_user_which_deck
    puts "Japanese"
    puts "Spanish"
    puts "German"
    print "Select a deck to play (leave blank to quit): "
    deck = gets.chomp
    puts deck
    deck
  end

end

flashcard_game = FlashcardGame.new
flashcard_game.play
