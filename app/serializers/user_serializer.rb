#
class UserSerializer < ActiveModel::Serializer
  attributes :email  # :id , :can_edit

  # show user lists but not USERS lists tobe done.
  has_many :lists

  # def can_edit
  #   # defaults to current user which may be nil
  #   scope ? scope == object : false
  # end
end
