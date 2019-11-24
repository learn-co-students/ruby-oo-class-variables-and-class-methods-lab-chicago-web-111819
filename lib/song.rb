require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@all << self
        @@count += 1
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
        songArray = []
        s = 0
        while s < @@count do
            songArray[s] = @@all[s]
            s += 1
        end
        gHash = Hash[self.genres.collect { |genre| [genre, 0] } ]
        # gHash = gHash.map { |k,v| [k, @@all.count(self.genre == k.to_str) ] }
        songArray.each { |i| 
            self.genres.each { |g|
                if g == i.genre
                    gHash[g] += 1
                end
            }
        }
        gHash
    end

    def self.artist_count
        songArray = []
        s = 0
        while s < @@count do
            songArray[s] = @@all[s]
            s += 1
        end
        aHash = Hash[self.artists.collect { |artist| [artist, 0] } ]
        # gHash = gHash.map { |k,v| [k, @@all.count(self.genre == k.to_str) ] }
        songArray.each { |i| 
            self.artists.each { |a|
                if a == i.artist
                    aHash[a] += 1
                end
            }
        }
        aHash
    end
end