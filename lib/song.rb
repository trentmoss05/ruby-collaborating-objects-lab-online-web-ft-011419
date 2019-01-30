class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_and_song = file_name.split(" - ")
    artist = Artist.new(artist_and_song[0]).save
    song = self.new(artist_and_song[1])
    song.artist = artist
    song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

end
