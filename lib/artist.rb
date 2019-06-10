
class Artist 
  @@song_count = 0 
  attr_accessor :name 
  def initialize(name)
    @name = name 
  end
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end
  def add_song(song)
    song.artist = self 
    @@song_count += 1 
    
  end
  def add_song_by_name(name)
    new = Song.new(name)
    new.artist = self 
    @@song_count += 1 
  end 
  def self.song_count 
    @@song_count
  end
end 