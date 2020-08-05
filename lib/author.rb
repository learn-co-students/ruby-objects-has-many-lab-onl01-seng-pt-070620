require 'pry'
class Author 
 
 @@post_count = 0
 
 attr_accessor :name, :posts
  
  
  def initialize(name)
    @name =  name
    @posts = []
  end
  
  def posts
    Post.all.select {|p|p.author == self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    t = Post.new(title)
    self.add_post(t)
    t
  end
  
  def self.post_count
    Post.all.count
  end
end 