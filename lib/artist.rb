require 'pry'
class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry
  end

  def songs
    Song.all.select {|song| song.artist == self}
    #binding.pry
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    #binding.pry
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @@song_count += 1
    song.artist = self
    #binding.pry
  end

  def self.song_count
    #binding.pry
    @@song_count
  end

end
