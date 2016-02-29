class ListSerializer < ActiveModel::Serializer
  attributes :category # removed :id from json
  has_many :items
end
