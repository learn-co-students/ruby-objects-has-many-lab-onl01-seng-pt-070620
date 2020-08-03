class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author
    @author
  end

  def author=(author_name)
    @author = author_name
  end

  def author_name
    author.name if author
  end

  def self.all
    @@all
  end
end