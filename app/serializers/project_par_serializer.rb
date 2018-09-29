class ProjectPar < ActiveModel::Serializer
    attributes :id, :name_project, :description_project,  :prom_calif_project, :category_id, :spectator_id, :participantes
end