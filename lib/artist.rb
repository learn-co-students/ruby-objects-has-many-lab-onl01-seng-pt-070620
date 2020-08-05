require 'pry'

class Artist 
  
  @@song_count = 0
  
  attr_accessor :name, :songs
  
  def initialize (name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|s|s.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1 
  end
  
  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s
  end
  
  def self.song_count
    Song.all.count
  end
end