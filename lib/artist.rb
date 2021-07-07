class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    total_artists_songs = Song.all.select do |song|
      song.artist
    end
    total_artists_songs.count
  end
end
