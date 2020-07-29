require 'pry'
class Song 
  
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist=(newartist)
    @artist = newartist
    puts "song artist add"
    @artist.add_song(self)
  end
  
  
  
  
  
  # hello = Song.new("Hello")
  #       hello.artist = adele
  #       expect(adele.songs).to eq([hello])
  
  
end     #ends class