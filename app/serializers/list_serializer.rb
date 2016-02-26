class ListSerializer < ActiveModel::Serializer
  attributes :id, :category
  has_one :user
end
