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
  
  
  def self.all 
    @@all 
  end
  
  def author_name 
    if self.author == nil 
      nil
    else 
      self.author.name
    end
  end
  
  # hello = Song.new("Hello")
  #       hello.artist = adele
  #       expect(adele.songs).to eq([hello])
  
  
end     #ends class