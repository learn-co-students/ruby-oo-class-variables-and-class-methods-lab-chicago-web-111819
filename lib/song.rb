class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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
        hashy_boi = {}
        @@genres.each do |value_boi|
            if hashy_boi[value_boi]
                hashy_boi[value_boi] += 1
            else
                hashy_boi[value_boi] = 1
            end
        end
        return hashy_boi
    end

    def self.artist_count
        hashy_boi = {}
        @@artists.each do |value_boi|
            if hashy_boi[value_boi]
                hashy_boi[value_boi] += 1
            else
                hashy_boi[value_boi] = 1
            end
        end
        return hashy_boi
    end    
end