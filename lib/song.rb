class Song
  attr_reader(:artist, :name)

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    @artist.nil? ? nil : @artist.name
  end

end
