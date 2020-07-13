require 'pry'
require_relative 'artist'
require_relative 'post'
require_relative 'song'

class Author
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def posts
		Post.all
	end
	
	def add_post(post)
		post.author = self
		post
	end

	def add_post_by_title(title)
        	post = Post.new(title)
        	post.author = self
	end
	
	def self.post_count
		Post.all.count
	end

	
end