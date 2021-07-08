
class Artist
    attr_accessor :name, :song, :songs
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song_name)
        newsong = Song.new(song_name)
        add_song(newsong)
    end

    def self.song_count
        Song.all.count
    end
end