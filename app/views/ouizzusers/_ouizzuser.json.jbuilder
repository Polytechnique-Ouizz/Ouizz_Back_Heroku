json.extract! ouizzuser, :id, :username, :password, :email, :phone, :created_at, :updated_at
json.url ouizzuser_url(ouizzuser, format: :json)