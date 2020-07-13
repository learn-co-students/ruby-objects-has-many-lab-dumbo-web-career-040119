class Author
  attr_accessor :name
  attr_reader :posts
  
  @@count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(posts)
    @posts << posts
    posts.author = self
    @@count += 1
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    @posts << posts
    posts.author = self
    @@count += 1
  end
  
  def self.post_count
    @@count
  end
end