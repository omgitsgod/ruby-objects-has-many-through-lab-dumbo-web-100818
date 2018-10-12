class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def artists
    songs.collect do |x|
      x.artist
    end
  end
  
end
