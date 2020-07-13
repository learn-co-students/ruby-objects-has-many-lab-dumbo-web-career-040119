require 'pry'
require_relative 'author'
require_relative 'post'
require_relative 'song'

class Artist
	attr_accessor :name
	@@all = []

	def initialize(name)
		#artist = Artist.new(name)
		@name = name
		@@all << self
	end
	
	def self.all
		@@all
	end
	
	def songs
		Song.all
	end

	def add_song(song)
		#song = Song.new(song)
		song.artist = self
		
	end
	
	def add_song_by_name(song_name)
		song = Song.new(song)
		song.artist = self
		song.name = song_name
	end

	def self.song_count
		Song.all.count
	end
end