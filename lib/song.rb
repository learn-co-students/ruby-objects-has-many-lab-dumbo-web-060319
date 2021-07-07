class Song
  @@all=[]
  attr_accessor :artist
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def name
  @name
end
 def artist_name
   return nil if self.artist.nil?
   self.artist.name
 end

end
