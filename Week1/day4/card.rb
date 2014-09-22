class Card
  def initialize(front_and_back)
    @front = front_and_back[:front]
    @back = front_and_back[:back]
  end

  def play
    puts "The front of the card is #{@front}.  What is the translation?"
    if correct?(gets.chomp)
      puts "You are correct!"
    else puts "You are incorrect.  The correct answer is #{@back}"
    end
  end

  private

  def correct?(prompt)
    @back.downcase == prompt.downcase
  end
end
