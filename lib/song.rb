require 'pry'
class Song 
  @@all = []
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(newartist)
    @artist = newartist
    puts "song artist add"
    @artist.add_song(self)
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name
    if self.artist == nil 
      nil
    else 
      self.artist.name
    end
  end
  
  
  # hello = Song.new("Hello")
  #       hello.artist = adele
  #       expect(adele.songs).to eq([hello])
  
  
end     #ends class