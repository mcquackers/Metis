require "./database"
class Jukebox
  def initialize
    @database = Database.new
  end

  def greet_user
    puts "Welcome to the Jukebox!"
    puts "Leave at any time by just hitting enter."
    @database.populate_database
    loop do
      print "Search for your favorite artist: "
      user_input = gets.chomp
      if user_input == ""
        break
      else
        perform_search(user_input)
      end
    end
  end

  private

  def perform_search(artist_name)
    songs_found = @database.query(artist_name)
    if songs_found
      linewidth = 50
      puts "~~~~ SONGS BY ~~~~".rjust(linewidth," ")
      puts "********************".rjust(linewidth, " ")
      puts "***   #{artist_name}   ***".rjust(linewidth+3, " ")
      puts "********************".rjust(linewidth, " ")
      puts songs_found
    else
      puts "Sorry, no songs found by #{artist_name}.  Try again."
    end
  end
end

jukebox = Jukebox.new
jukebox.greet_user
