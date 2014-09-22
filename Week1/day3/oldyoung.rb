class OldYoung
  def initialize
    @list_of_names =Hash.new
  end

  def play
    print "Enter names in format \"FirstName Age\" Just hit enter to stop entry. > "
    input_names
    puts "The oldest person is #{find_oldest}"
    puts "The youngest person is #{find_youngest}"
  end

  def input_names
    loop do
      name_and_age = gets.chomp
      if name_and_age == ""
        break
      else
        @list_of_names.merge!(convert_to_hash(name_and_age))
      end
    end
#    puts @list_of_names
  end

  def convert_to_hash(name_and_age)
    name = name_and_age.slice(0..name_and_age.index(" ")-1)
    age = name_and_age.slice(name_and_age.index(" ")+1, name_and_age.length)
    {name => age.to_i}
  end

  def find_oldest
    old = 0
    @list_of_names.each_key do |key|
      if @list_of_names[key] > old
        old = @list_of_names[key]
        break key
      end
    end
  end
  def find_youngest
    list_ages = []
    @list_of_names.each_value {|value| list_ages.push(value)}
    youngest_age = list_ages.sort[0]
    @list_of_names.each do |key, value|
      if value == youngest_age
       break key 
      end
    end
  end
end

game = OldYoung.new
game.play
