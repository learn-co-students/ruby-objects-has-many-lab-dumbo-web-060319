require "pry"

class Artist

    attr_accessor :name, :songs, :count

    @@count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(record)
        record.artist = self
        @songs << record if !@songs.include?(record)
        @@count += 1
    end

    def add_song_by_name(record)
        song = Song.new(record)
        @songs << song
        song.artist = self
        @@count += 1
    end

    def self.song_count
         @@count
    end

    
end