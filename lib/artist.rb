require 'pry'

class Artist
  
  @@all = []

  attr_accessor :name, :song

  def initialize (name)
    @name = name
    @@all << self

  end

  def songs
  	Song.all.select {|song| song.artist == self}
  	#binding.pry
  end

  def add_song (song)
  	song.artist = self
  end

  def add_song_by_name (song_name)
  	song = Song.new(song_name)
  	self.add_song(song)
  end

  def self.song_count
    Song.all.length
  end

  def self.all 
  	@@all
  end
end

#artist1 = Artist.new("guy")
#artist1.songs