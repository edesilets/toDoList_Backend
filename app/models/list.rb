class List < ActiveRecord::Base
  has_many :items, inverse_of: :list, foreign_key: :list_id
  belongs_to :user
end
