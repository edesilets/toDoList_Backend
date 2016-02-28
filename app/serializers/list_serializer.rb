class ListSerializer < ActiveModel::Serializer
  attributes :id, :category
  has_many :items
end
