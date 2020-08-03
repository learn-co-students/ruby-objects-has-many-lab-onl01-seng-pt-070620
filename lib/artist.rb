class Artist

  # has an attr_accessor for name
  attr_accessor :name

  # is initialized with a name
  def initialize(name)
    @name = name
  end

  # has many songs
  def songs
    Song.all.select { |song| song.artist == self }
  end

  # one arg of a song, associates with artist, by, song belongs to artist
  def add_song(song)
    song.artist = self
  end

  # one arg of a song name, a new song, associates the song & artist
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  # return total num songs associated existing artists
  def self.song_count
    Song.all.count
  end

end
