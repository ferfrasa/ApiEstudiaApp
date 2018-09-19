class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name_project, :description_project, :code_project, :status_project, :prom_calif_project,:tag_ids
  has_one :category
  has_one :spectator
end
