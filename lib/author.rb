require 'pry'
class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
  end
  
  def add_post(post1)
    post1.author = self
  end
  
  def posts
    Post.all.select {|post1| post1.author == self}
  end
  
  def add_post_by_title(title)
    new_title = Post.new(title)
    new_title.author = self
  end
  
  def self.post_count
    Post.all.count 
  end
  
end