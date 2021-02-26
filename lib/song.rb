class Song #Song class

    attr_accessor :artist, :name #takes in the artist and the name

    @@all = [] #empty array of all variable

    def initialize(name) #initialize the name
        @name = name 
        save #this initializes a save to each time a song name is initialized
    end

    def save 
        @@all << self #adds the song thats initialized to be saved and entered into the empty array
    end

    def self.all #calls all in a class method that returns an array of all the songs
        @@all
    end

    def artist_name #artist name

        if !@artist #if the song does not have an artist
            

        else 
            @artist.name #else if it does, puts out the artist name

        end
        # binding.pry
    end

end