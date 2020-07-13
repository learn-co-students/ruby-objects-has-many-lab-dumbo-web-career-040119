require_relative 'song.rb'

class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end


  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    count = Song.all.count
  end

end
