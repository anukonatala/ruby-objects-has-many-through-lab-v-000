class Genre
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end
 
  def songs
    Song.all.select {|song| song.name}
  end
 
  
  def add_song(song)
    @songs << song
  end
 
  def artists
    Song.all.collect do |song|
      song.artist
    end
  end
end