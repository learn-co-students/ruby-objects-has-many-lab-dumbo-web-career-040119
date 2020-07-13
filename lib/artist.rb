class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # Add each instance to the empty array when initialized!
    @@all << self
  end

  # Here we want to make a method add_song that takes in an argument of a song
  # and associates that song with the artist by telling the song that it belongs # to that artist.
  def add_song(song)
    # We want to tell the song_name passed in that it belongs to the instance
    # of Artist for which this method is called on aka self.
    song.artist = self
  end

  # Here we make a method add_song_by_name that takes in an argument of a song
  # name, creates a new song with it, and associates the song and artist.
  def add_song_by_name(song_name)
    # Create a new song called "song" with argument passed in.
    song = Song.new(song_name)
    # Associate it with the artist
    song.artist = self
  end

  # This method will make it so each Artist is able to HAVE MANY songs!
  def songs
    # Select each song and set the artist value for it equal to the instance
    # of Artist that this method is being called on (self).
    Song.all.select do |song|
      song.artist ==  self
    end
  end

  # This method counts how many songs each artist has.
  def self.song_count
    Song.all.count
  end
  # Remember that Song.all will return the array of songs (@@all) that we
  # defined in the Song class as self.all


end
