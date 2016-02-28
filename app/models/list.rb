class List < ActiveRecord::Base
  #belongs_to :user, inverse_of: :lists
  #has_many :items, foreign_key: :list_id
end
