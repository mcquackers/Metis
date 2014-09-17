class Card
  attr_reader :prompt
  def initialize (front, back)
    @front = front
    @back = back
  end

  def correct? (attempt)
    attempt.downcase == back.downcase
  end

  def play
    puts "Front is #{@front}, back is #{@back}"
  end
end
