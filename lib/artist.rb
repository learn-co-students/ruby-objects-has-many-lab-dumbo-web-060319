require "pry"
class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  
  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    Song.all.length
  end

  def self.all
    @@all
  end


end


