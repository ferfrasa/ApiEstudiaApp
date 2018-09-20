json.extract! activity, :id, :name_activity, :description_activity,:fecha_activity, :lugar_activity, :status_activity_id,:type_activity_id,:project_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
