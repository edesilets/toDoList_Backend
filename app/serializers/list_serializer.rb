class ListSerializer < ActiveModel::Serializer
  attributes :id, :type
  has_one :user
end
