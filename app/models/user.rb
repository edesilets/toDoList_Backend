#
class User < ActiveRecord::Base
  include Authentication
  #has_many :lists, foreign_key: :user_id
end
