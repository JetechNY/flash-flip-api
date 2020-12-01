class Category < ApplicationRecord
    belongs_to :user, optional: true
    has_many :cards, :dependent => :destroy
    # accepts_nested_attributes_for :cards, allow_destroy: true
end
