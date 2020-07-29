class Author 
  @@ALL_ARTIST_SONGS = 0 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_song(song_arg)
    counter = 0 
    if song_arg.artist == nil && counter == 0     #checks if artist already exists for song
      song_arg.artist = self          
      counter += 1 
    else 
      @posts << song_arg         
      @@ALL_ARTIST_SONGS += 1 
    end
  end
  
  def add_song_by_name(name)
    new_song_obj = Song.new(name)
    add_song(new_song_obj)
  end
  
  def self.song_count
    @@ALL_ARTIST_SONGS
  end
  
end     #ends class