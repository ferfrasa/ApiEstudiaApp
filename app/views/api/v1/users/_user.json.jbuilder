json.extract! user, :id, :name, :email, :doc, :password, :user_type_id, :university_id, :created_at, :updated_at
json.url user_url(user, format: :json)
