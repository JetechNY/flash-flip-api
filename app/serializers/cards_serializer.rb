class CardSerializer < ActiveModel::Serializer
    attributes :id, :term, :definition, :is_starred, :category_id
end