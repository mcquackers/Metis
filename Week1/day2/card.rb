class Card
  attr_reader :prompt
  def initialize (front_and_back)
    @front = front_and_back[:front]
    @back = front_and_back[:back]
  end

  def correct? (attempt)
    attempt.downcase == back.downcase
  end

  def play
    puts "Front is #{@front}, back is #{@back}"
  end
end
