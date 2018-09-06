class HasProjectTagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :project
  has_one :tag
end
