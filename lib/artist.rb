class Artist
  attr_reader :name
  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def self.song_count=(number)
    @@song_count = number
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self.class.song_count += 1
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

end
