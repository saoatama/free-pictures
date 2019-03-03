json.extract! picture, :id, :name, :genre_id, :url, :download-time, :created_at, :updated_at
json.url picture_url(picture, format: :json)
