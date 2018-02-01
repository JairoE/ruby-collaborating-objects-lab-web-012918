require "pry"
class Song


  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(file)

    artist_name = file.split(" - ").first
    song_name = file.split(" - ")[1]
    # genre = file.split(" - ")[2][0..-5]

    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new(song_name)
    artist.add_song(song)
    song.artist = artist
    song

  end

end
