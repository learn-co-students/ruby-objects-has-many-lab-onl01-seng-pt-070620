class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song) ## add EXISTING song to an artist
    song.artist = self
  end

  def add_song_by_name(songname) ## imo this should really be called CREATE song
    song = Song.new(songname)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end
