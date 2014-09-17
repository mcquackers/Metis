class Locker
  def initialize
    @lockers = Array.new(100, "closed")
  end
  def gamestart
    (1..100).each do |student|
      (1..100).each do |locker|
        if locker%student == 0
          toggle(locker-1)
        end
      end
    end
    @lockers.each_with_index {|state, locknum| puts "Locker \##{locknum+1} is #{@lockers[locknum]}"}
  end

  def toggle(locker)
    if @lockers[locker] == "closed"
      @lockers[locker] = "open"
    else 
      @lockers[locker]= "closed"
    end
  end
end

locker = Locker.new
locker.gamestart
