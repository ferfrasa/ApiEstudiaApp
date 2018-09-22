class AppreciationSerializer < ActiveModel::Serializer
  attributes :id, :calificacion, :comentario
  has_one :activity
  has_one :user
  
end
