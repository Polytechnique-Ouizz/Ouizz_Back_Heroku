json.extract! registration, :id, :ouizzuser_id, :event_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)