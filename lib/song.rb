
class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    x = @artist 
    if x 
      return x.name 
    else 
      return nil 
    end 
  end
end