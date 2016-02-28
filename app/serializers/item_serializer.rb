class ItemSerializer < ActiveModel::Serializer
  attributes :id, :todo   # removed :list from json render
end
