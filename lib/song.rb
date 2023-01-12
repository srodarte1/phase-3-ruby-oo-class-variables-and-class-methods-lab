require 'pry'
#what are class methods? how would we use it? is there an example where we use it? .new is a class method. you call the methods on the class. this is what makes them class methods.
# need to figure out whether you need an instance method or a class method.


class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = [] 
    @@genres = [] #keeps track of data about multiple instances that are within the class. when you create a class variable it will be created in the global scope of the class. Keeps track of data pertaining to a class.

    def initialize(name, artist, genre)
        @name = name  
        @artist = artist
        @genre = genre
        @@count += 1 #when we add or create a new song, it will bump up the count class variable by 1, every time instantiated.
        @@artists << artist #shovel bc youre working with an array
        @@genres << genre
    end

    def my_instance_method
        self
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count(hash)
        h = Hash.new
        h.self
    end



end


