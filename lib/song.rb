class Song

  # has an attr_accessor for name
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  # access and return all songs in class variable
  def self.all
    @@all
  end

  # has many songs
  def songs
    @@all
  end

  # knows the name of its artist
  # returns nil if the song does not have an artist
  def artist_name
      if artist
        self.artist.name
      else
        nil
    end
  end

end
