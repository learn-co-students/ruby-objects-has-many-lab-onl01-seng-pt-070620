require 'pry'

class Post 
  
  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    self.save
  end
  
  def author_name
    self.author ? self.author.name : nil
  end

  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end