require 'pry'
require_relative 'artist.rb'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def artist_name
  self.artist.name if artist
end
end

# goodbye = Song.new("Goodbye")
