json.extract! project_par, :id, :name_project, :description_project,  :prom_calif_project, :category_id, :spectator_id, :participantes
json.url project_par_url(project_par, format: :json)