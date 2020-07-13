require_relative 'song.rb'
require 'pry'

ALL = []

class Artist
attr_accessor :name, :song

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

def add_song_by_name(title)
  title = Song.new(title)
  title.artist = self
  true
end

def self.song_count
  Song.all.length
end

end

# goodbye = Song.new("Goodbye")
# sr71 = Artist.new("SR-71")
# sr71.add_song(goodbye)
