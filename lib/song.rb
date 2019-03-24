class Song
attr_accessor :name, :genre, :artist
@@all = []
  def initialize(name, genre)
    @name = name
    @genre = genre
  end

end
