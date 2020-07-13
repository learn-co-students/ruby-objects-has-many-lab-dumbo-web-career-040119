require_relative 'post.rb'

class Author
  attr_reader :name, :post

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

def posts
  Post.all.select {|post| post.author == self}
end

def add_post(post)
  post.author = self
end

def add_post_by_title(post_title)
  post_title = Post.new(post_title)
  post_title.author = self
end

def self.post_count
  Post.all.length
end

end
