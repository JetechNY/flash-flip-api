class User < ApplicationRecord
    has_many :categories
    has_many :cards, through: :categories
end
