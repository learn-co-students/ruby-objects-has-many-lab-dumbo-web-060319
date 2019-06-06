require "pry"

class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(article)
        # binding.pry
        article.author = self
        @posts << article if !@posts.include?(article)
    end

    def add_post_by_title(article)
        post = Post.new(article)
        @posts << post
        post.author = self
    end

    def self.post_count
         
    end

    
end