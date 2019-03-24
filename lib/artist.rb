class Artist
attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
    song
  end

  def songs
    Song.all.collect {|s| s.artist == self}
  end

  def genres
    songs.collect {|s| s.genre}
  end

end
