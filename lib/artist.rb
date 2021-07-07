require "pry"

class Artist
    attr_accessor :name
    attr_reader :songs
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @all
    end

    def songs
        @songs = Song.all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    # binding.pry
    def self.song_count
        Song.all.length
    end

end