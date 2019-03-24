class Artist
attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def new_song(name)
    song = Song.new(name)
    song.artist = self
    song
  end

  def songs
    Songs.all.collect {|s| s.artist == self}
  end

  def genres
    songs.collect {|s| s.genre}
  end

end
