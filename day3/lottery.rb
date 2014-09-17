class Lottery
  def initialize
    @names = []
  end

  def play
    puts "Welcome to the lottery program.  \n  Please enter the names of contestants.  Enter a blank line to begin the lottery: "
    input_name
    list_contestants
    select_winner
  end

  def input_name
    loop do
      name = gets.chomp
     if name== ""
       puts "Exiting name entry"
       break
     else
       @names.push(name)
     end 
    end
  end

  def list_contestants
    puts "------ List of Contestants -------"
    @names.each {|name| puts name}
  end

  def select_winner
    puts "\nThe winner is #{@names.sample}"
  end
end

lottery = Lottery.new
lottery.play
