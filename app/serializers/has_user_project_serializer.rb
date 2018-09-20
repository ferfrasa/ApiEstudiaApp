class HasUserProjectSerializer < ActiveModel::Serializer
  attributes :id, :rol
  has_one :user
  has_one :project
end
