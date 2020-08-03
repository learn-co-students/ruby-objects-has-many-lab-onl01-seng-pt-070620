class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    @@all
  end

  def title
    @title
  end

  # knows the name of its author
  # returns nil if the post does not have an author
  def author_name
      if author
      self.author.name
      else
      nil
    end
  end

end
