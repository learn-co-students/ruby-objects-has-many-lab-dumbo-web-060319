class Author
  attr_accessor :name, :post, :title
  @@all = []
  #because I only put one @, it didn't initialize with the name

    def initialize(name)
      @name = name
      @@all << self
      @title = title
      #shoveling into the array of author class
    end

    def self.all
      @@all
      #returns the array
    end

    def posts
      Post.all.select {|post| post.author == self}
      #now we can see that the author has many posts
    end

    def add_post(post)
      post.author = self
    end

    def add_post_by_title(title)
      post = Post.new(title)
      post.author = self

    end

    def self.post_count
      Post.all.select {|post| post.author != nil}.length
    end

end
