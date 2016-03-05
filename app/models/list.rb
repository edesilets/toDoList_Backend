class List < ActiveRecord::Base
  validates_uniqueness_of :category, scope: :user_id
  has_many :items, inverse_of: :list, foreign_key: :list_id, dependent: :destroy
  belongs_to :user
end
