class Author 
  attr_accessor :name
  @@post_count = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@post_count << self
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end
  
  def self.post_count
    Post.all.size
  end
end