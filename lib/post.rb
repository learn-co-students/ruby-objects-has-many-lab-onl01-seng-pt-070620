class Post
  attr_accessor :author, :title, :author_name
  @@all = []
  def initialize(title)
    @title = title
    @@all << self 
end 

  def author_name
    self.author.name
  end

 def self.all 
    @@all 
  end 
  
end