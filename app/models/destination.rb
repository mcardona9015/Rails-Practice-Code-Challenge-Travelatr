class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def featured_post
        self.posts.max_by(&:likes)
    end

    def average_age
        self.bloggers.sum(&:age) / self.bloggers.count
    end
end
