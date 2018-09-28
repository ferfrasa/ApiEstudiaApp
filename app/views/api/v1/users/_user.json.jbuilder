json.extract! user, :id,:id_firebase, :name, :email, :doc,  :user_type_id, :university_id, :created_at, :updated_at
json.url user_url(user, format: :json)
