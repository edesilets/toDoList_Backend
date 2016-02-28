class List < ActiveRecord::Base
  has_many :items, inverse_of: :lists, foreign_key: 'list_id'
end
