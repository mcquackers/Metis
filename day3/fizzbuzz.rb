class FizzBuzz
  def run
    (0..100).each do |number|
      if number%3 == 0 and number%5==0
        puts "FizzBuzz"
      elsif number%3 == 0
        puts "Fizz"
      elsif number%5 == 0
        puts "Buzz"
      else
        puts number
      end
    end
  end
end

fizzy = FizzBuzz.new
fizzy.run
