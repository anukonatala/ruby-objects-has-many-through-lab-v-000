class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name, artist ,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
end

# a song will be assigned an Artist instance (e.g. song.artist = an Artist instance)