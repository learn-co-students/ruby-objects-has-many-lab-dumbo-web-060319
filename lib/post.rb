class Post
  attr_accessor :author, :title
  @@all = []
  #To set up reader and writer methods for post class and author class variables

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    author.name if author
  end

  end
