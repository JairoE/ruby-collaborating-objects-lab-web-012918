class MP3Importer
  attr_accessor :path
  @@all = []
  def initialize(music_path)
    @path = music_path
    @@all << @path
  end

  def files
    Dir["#{@path}/*.mp3"].map do |file|
      file.split('/').last
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end


end
