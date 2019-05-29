json.extract! event, :id, :event_start, :event_end, :class_size, :name, :gym_id, :created_at, :updated_at
json.url event_url(event, format: :json)
