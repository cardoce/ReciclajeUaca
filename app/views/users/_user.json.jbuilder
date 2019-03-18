json.extract! user, :id, :email, :points, :firstname, :lastname, :created_at, :updated_at
json.url user_url(user, format: :json)
