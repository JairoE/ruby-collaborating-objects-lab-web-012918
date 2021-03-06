class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song (song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # check to see if artist already exists
    # create new Artist
    found_artist = @@all.find {|artist| artist.name == name}
      if found_artist
        found_artist
      else
        artist = Artist.new(name)
        artist.save
        artist
      end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
