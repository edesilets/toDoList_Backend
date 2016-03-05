class ItemSerializer < ActiveModel::Serializer
  attributes :id, :todo # removed :id ,:list from json render
end
