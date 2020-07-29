require 'pry'
class Post 
  @@all = []
  attr_accessor :title
  attr_reader :author
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author=(newauthor)
    @author = newauthor
    @author.add_post(self)
  end
  
  
  
  
  
  # hello = Song.new("Hello")
  #       hello.artist = adele
  #       expect(adele.songs).to eq([hello])
  
  
end     #ends class