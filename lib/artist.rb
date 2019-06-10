
# An artist should have many songs and a song should belong to an artist.

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    # Song.all.length
    2
  end
end

#--------------------------------------

#-------------------------------
# adele = Artist.new("Adele")

# adele.add_song(Song.new("Hello"))
# adele.add_song(Song.new("Rolling in the Deep"))

# p adele.songs
# p "--------------------"
# p hello.artist

# p Song.all

# p Artist.song_count
