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

  def new_song(name, self, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.collect {|s| s.artist == self}
  end

  def genres
    songs.collect {|s| s.genre}
  end

end
