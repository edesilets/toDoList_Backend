class Item < ActiveRecord::Base
  belongs_to :list, inverse_of: :items
end
