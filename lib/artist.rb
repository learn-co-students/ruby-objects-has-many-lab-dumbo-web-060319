class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end
  #This method's purpose is to show that this artist has many songs.
  #We iterate over the class method to find the songs that match a particular artist.


  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    # list of all Songs
    #has artist - we count, if not, skip
    counter = 0
    Song.all.each do |song|
      if song.artist != nil
        counter += 1
      end
    end
    counter
    # Song.all.select { |song| song.artist != nil }.length
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

end
