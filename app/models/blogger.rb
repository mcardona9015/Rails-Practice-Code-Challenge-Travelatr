class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true, presence: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 31}

    def total_likes
       self.posts.sum(&:likes)
    end

    def featured_post
        self.posts.sort_by(&:likes).last
    end

    def top_five
        self.posts.group(:destination).count.sort_by(&:last).reverse.first(5)
    end
end
