class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :doc, :password
  has_one :user_type
  has_one :university
end
