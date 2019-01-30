class Artist

  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find do |a|
      name == a.name
    end
    artist || Artist.new(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
