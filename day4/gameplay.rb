require "./flashcard_game"
require "./deck_reader"

flashcard_game = FlashcardGame.new(DeckReader.new("decks.txt").get_decks)
flashcard_game.play
