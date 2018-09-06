class AppreciationSerializer < ActiveModel::Serializer
  attributes :id, :comentario, :calificacion, :idActivity
  has_one :has_user_project
end
