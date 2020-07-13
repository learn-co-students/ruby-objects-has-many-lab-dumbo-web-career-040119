require_relative 'author'


class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

   def self.all
     @@all
   end

   def author_name
     return nil if !self.author
     self.author = author.name
   end

end
