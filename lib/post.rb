class Post
  attr_accessor :title, :author

  @@all  = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def author_name
    if !self.author
      nil
    else
      self.author.name
    end
  end

  # Class Methods
  def self.all
    @@all
  end

end
