class Round
  MAX_GUESSES = 2
  def initialize
    @answer = rand(1..10)
    @number_of_guesses = 0
    @won = false
  end

  attr_reader :number_of_guesses, :number_correct

  def play
      puts "Welcome to my game!"
      puts "The answer is #{@answer}"
      MAX_GUESSES.times do
        print "Enter your guess> "
        guess = gets.chomp
        @number_of_guesses += 1
        if correct?(guess)
          tell_user_correct
          puts "Answer is #{@answer}; your guess was #{guess}"
          @won = true
          break
        else 
          tell_user_incorrect
          puts "Answer is #{@answer}; your guess was #{guess}"
        end

      end

  end

  def won?
    @won
  end

  private

  def correct?(guess)
      guess.to_i == @answer
  end
  def tell_user_correct
     puts "You are correct!"
  end
  def tell_user_incorrect
      puts "You are incorrect."
  end

end
