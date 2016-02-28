#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email # , :can_edit
  # show user lists but not USERS lists
  #has_many :lists
  # def can_edit
  #   # defaults to current user which may be nil
  #   scope ? scope == object : false
  # end
end
