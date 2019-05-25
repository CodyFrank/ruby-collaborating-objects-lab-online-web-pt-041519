require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
     @name = name
  end

  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    return song
  end
end
