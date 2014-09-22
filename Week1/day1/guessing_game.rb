require "./round"
class GuessingGame
  NUMBER_OF_ROUNDS = 3

  def initialize
    @total_guesses = 0
    @total_correct = 0
  end

  def play
    NUMBER_OF_ROUNDS.times do
      puts "------- NEW ROUND -------"
      round = Round.new
      round.play
      puts "You made #{round.number_of_guesses} guesses."
      @total_guesses +=  round.number_of_guesses
      if round.won?
        @total_correct += 1
      end

    end

    puts "You made, on average, #{avg_guesses} guesses per round."
    puts "You made a total of #{@total_correct} correct guesses."
  end

  def avg_guesses
    (@total_guesses / NUMBER_OF_ROUNDS.to_f)
  end


end
guessing_game = GuessingGame.new
guessing_game.play
