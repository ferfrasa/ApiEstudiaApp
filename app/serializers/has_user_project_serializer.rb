class HasUserProjectSerializer < ActiveModel::Serializer
  attributes :id, :rol
  has_one :project
  has_one :user
end
