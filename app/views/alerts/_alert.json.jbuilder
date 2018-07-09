json.extract! alert, :id, :imagen, :latitude, :longitude, :address, :created_at, :updated_at
json.url alert_path(alert, format: :json)
