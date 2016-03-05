class ListSerializer < ActiveModel::Serializer
  attributes :id, :category # removed :todo :list from json
end
