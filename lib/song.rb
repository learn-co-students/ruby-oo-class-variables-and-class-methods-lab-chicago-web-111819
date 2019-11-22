class Song

    attr_accessor :name, :artist, :genre
    @@all = []
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@all << self
        @@count += 1
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genres_hash = {}
        counter = 0
        while counter < @@genres.length do
            if genres_hash[@@genres[counter]]
                genres_hash[@@genres[counter]] += 1
            else
                genres_hash[@@genres[counter]] = 1
            end
            counter += 1
        end
        return genres_hash
    end

    def self.artist_count
        artists_hash = {}
        counter = 0
        while counter < @@artists.length do
            if artists_hash[@@artists[counter]]
                artists_hash[@@artists[counter]] += 1
            else
                artists_hash[@@artists[counter]] = 1
            end
            counter += 1
        end
        return artists_hash
    end


end