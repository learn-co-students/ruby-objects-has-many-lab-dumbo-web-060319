class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(article)
        post = post.new(article)
        post.artist = self
    end

    def add_post_by_name(article)
        post = post.new(article)
        @posts << post
        post.author = self
    end

    def self.post_count
         
    end

    
end