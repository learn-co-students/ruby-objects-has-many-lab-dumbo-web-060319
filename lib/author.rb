require "pry"

class Author

    attr_accessor :name, :posts, :count

    @@count = 0

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(article)
        # binding.pry
        article.author = self
        @posts << article if !@posts.include?(article)
        @@count += 1
    end

    def add_post_by_title(article)
        post = Post.new(article)
        @posts << post
        post.author = self
        @@count += 1
    end

    def self.post_count
        @@count
    end

    
end