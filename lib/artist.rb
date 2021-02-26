require "pry"

class Artist #artist class

    attr_accessor :name, :songs

    
    def initialize(name) #initialize the name of the artist
        @name = name #the name gets initiallize
        # binding.pry
    end

    def add_song(song) #add a song 

        song.artist = self #the song to the artist gets added to the artist class
        
    end

    def songs #song method
        Song.all.select {|song| song.artist == self } #calls upon the Song class, all the songs and select the song by artist into the artist class
    end

    def add_song_by_name(name) #add song by name takes that name (artist) as argument

        song = Song.new(name) #song variable will equal the Song(taken from Song class).new and takes in the artist name
        song.artist = self #the song by the artist is equal to the Artist class
       
    end

    def self.song_count

        Song.all.length #pulls the Song class, sees alla nd brings out the length
        
    end
end