class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :categories
    has_many :cards, through: :categories
    # accepts_nested_attributes_for :categories, allow_destroy: true
end
