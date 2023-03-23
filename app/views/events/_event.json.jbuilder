json.extract! event, :id, :name, :location, :description, :start_time, :end_time, :price, :is_free, :available_spots, :maximum_applications, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
