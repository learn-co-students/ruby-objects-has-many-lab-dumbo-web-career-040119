class Author
    attr_reader :name
    #attr_accessor :posts

    @@post_count = 0

    def initialize(name)

        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        #binding.pry
        self.posts << post
        post.author = self
        #binding.pry
        @@post_count += 1
    end

    def add_post_by_title(title)
        #binding.pry
        post = Post.new(title)
        self.posts << post
        post.author = self
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end
end