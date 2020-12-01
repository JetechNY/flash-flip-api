class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email
    has_many :categories
    has_many :cards, through: :category
end