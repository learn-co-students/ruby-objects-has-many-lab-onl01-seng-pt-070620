class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # has many posts
  def posts
    Post.all.select { |post| post.author = self }
  end

  # add a post
  def add_post(post)
    post.author = self
  end

  # take in arg & post title, create new post, associate it with author
  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end

  # is a class method that returns the total number of posts associated to all existing authors
  def self.post_count
    Post.all.count
  end

  # knows the name of its author

end
