class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        gc = Hash.new(0)
        @@genres.map {|genre| gc[genre] += 1}
        gc
    end

    def self.artist_count
        ac = Hash.new(0)
        @@artists.map {|artist| ac[artist] += 1}
        ac
    end

end