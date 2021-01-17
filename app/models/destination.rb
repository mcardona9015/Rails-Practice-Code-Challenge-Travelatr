class Destination < ApplicationRecord
    has_many :post
    has_many :bloggers, through: :posts
end
