require "pry"

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all.select { |post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end

  def self.post_count
    Post.all.length
  end

  def self.all
    @@all
  end

end