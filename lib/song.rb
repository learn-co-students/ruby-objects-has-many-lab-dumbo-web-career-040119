class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def artist_name
        #binding.pry
        if self.artist
            self.artist.name
        else
            nil
        end
    end

    def self.all
        @@all
    end

    
end