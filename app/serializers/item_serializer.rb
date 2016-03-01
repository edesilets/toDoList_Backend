class ItemSerializer < ActiveModel::Serializer
  attributes :todo   # removed :id ,:list from json render
end
