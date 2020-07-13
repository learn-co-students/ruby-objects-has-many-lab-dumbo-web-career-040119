class Song
  # Put :artist in attr_accessor b/c songs belong to Artist class!!!!!!
  attr_accessor :name, :artist

  # Empty array to hold all songs.
  @@all = []

  # Create new instances of Song and add them to the array when created.
  def initialize(name)
    @name = name
    @@all << self
  end

  # Return the array of all the songs.
  def self.all
    @@all
  end

  # We want the song to know the name of the artist and return nil if the song
  # doesnt have an artist
  def artist_name
    # Return name if artist exists.
    artist.name if artist
  end
end
