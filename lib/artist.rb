class Artist
  @@all = []
  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def songs
  Song.all.select do |blah|
    blah.artist == self
  end
end

def genres
  songs.collect do |x|
    x.genre
  end
end

def self.all
  @@all
end
end
