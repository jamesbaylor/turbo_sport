json.extract! request, :id, :user_id, :advertisement_id, :is_accepted, :created_at, :updated_at
json.url request_url(request, format: :json)
