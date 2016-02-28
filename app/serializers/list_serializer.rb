class ListSerializer < ActiveModel::Serializer
  attributes :id, :category
  #has_one :user
  #has_many :items, foreign_key: :list_id
end
