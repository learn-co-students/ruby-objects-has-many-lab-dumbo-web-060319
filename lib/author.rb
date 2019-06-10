
class Author 
  
  @@post_count=0
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select do |x|
      x.author == self 
    end
  end
  
  def add_post(added)
    added.author = self 
    @@post_count += 1 
  end
  
  def add_post_by_title(title)
    new = Post.new(title)
    new.author = self 
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count
  end
end