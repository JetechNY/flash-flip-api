class User < ApplicationRecord
    has_many :categories
    has_many :cards, through: :categories
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
