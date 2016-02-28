class ItemSerializer < ActiveModel::Serializer
  attributes :id, :todo, :list
  belongs_to :lists, inverse_of: :items
end
