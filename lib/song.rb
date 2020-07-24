class Song
  attr_accessor :artist, :genre, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist ? artist.name : nil # why does this work && why does author.try(:name) not work? && why does author.name ? author.name : nil not work
  end
end
