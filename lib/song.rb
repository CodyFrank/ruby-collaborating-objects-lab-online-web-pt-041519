class Song

  attr_accessor :name, :artist

  def initialize(name)
     @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" _ ")[0]
    song_name = filename.split(" _ ")[1]
    Song.new(song_name)
  end
end
