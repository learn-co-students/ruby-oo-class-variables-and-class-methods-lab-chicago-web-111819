class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
        #returns an array of all of the artisits of the existing songs.  Array should only contain unique artists.  No reapeats!  
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {} # create an empty hash
        
        @@genres.each do |genre| # iterate over the @@genres array and populate a hash with key/value pairs.  You will need to check to see if the hash alerady contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair
            if genre_count[genre] 
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        # retruns a hash of geners and the number of songs that have those generes
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        #returns a hash of artists and the number of songs that have those artists
    end
    artist_count
end


end
