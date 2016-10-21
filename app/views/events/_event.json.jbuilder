json.extract! event, :id, :user, :name, :location, :date, :time, :description, :capacity, :price, :image, :created_at, :updated_at
json.url event_url(event, format: :json)