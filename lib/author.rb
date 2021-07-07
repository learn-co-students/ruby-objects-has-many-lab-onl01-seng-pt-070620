class Author 
  @@ALL_AUTHOR_POSTS = 0 
  @@all = []
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def add_post(post_arg)
    counter = 0 
    if post_arg.author == nil && counter == 0     #checks if author already exists for song
      post_arg.author = self          
      counter += 1 
    else 
      @posts << post_arg         
      @@ALL_AUTHOR_POSTS += 1 
    end
  end
  
  def add_post_by_title(name)
    new_post_obj = Post.new(name)
    add_post(new_post_obj)
  end
  
  def self.post_count
    @@ALL_AUTHOR_POSTS
  end
  
  def self.all 
    @@all 
  end
  
end     #ends class