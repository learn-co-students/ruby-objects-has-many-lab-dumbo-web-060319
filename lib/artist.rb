require "pry"

class Artist

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(record)
        record.artist = self
        @songs << record if !@songs.include?(record)
    end

    def add_song_by_name(record)
        song = Song.new(record)
        @songs << song
        song.artist = self
    end

    def self.song_count
         
    end

    
end