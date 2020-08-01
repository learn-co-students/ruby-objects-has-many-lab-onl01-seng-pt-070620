require 'pry'
class Author

  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    #@@post_count+= 1
  end

  def posts
    Post.all.select {|post| post.author == self}
    #binding.pry
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    #binding.pry
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @@post_count += 1
    post.author = self
    #binding.pry
  end

  def self.post_count
    #binding.pry
    @@post_count
  end

end
