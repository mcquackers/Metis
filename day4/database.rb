require "CSV"
class Database
  def initialize
    @name_artist = {}
  end

  def populate_database
    CSV.foreach("music.csv", {headers: true}) do |row|
      if @name_artist.has_key?(row["Artist"])
        @name_artist[row["Artist"]].push(row["Name"])
        @name_artist[row["Artist"]].sort!
        # The artist is in the DB
      else
        @name_artist[row["Artist"]] = [row["Name"]]
        # The artist is not in the DB
      end
    end
  end

  def query(artist_name)
    @name_artist[artist_name]
  end


  private

  def has_key?(artist_name)
    @name_artist[artist_name]
  end
end
