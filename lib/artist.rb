require 'pry'
class Artist 
  attr_accessor :name, :artist, :songs
  @@song_count = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self }
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end
  
  def self.song_count
    Song.all.size
  end
  
end