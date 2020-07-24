class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    author ? author.name : nil # why does this work && why does author.try(:name) not work? && why does author.name ? author.name : nil not work
  end
end
