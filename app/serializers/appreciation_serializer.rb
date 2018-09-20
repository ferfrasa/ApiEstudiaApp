class AppreciationSerializer < ActiveModel::Serializer
  attributes :id, :calificacion, :comentario, :idActividad
  has_one :has_user_project
end
