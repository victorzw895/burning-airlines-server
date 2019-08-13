json.extract! flight, :id, :dateTime, :origin, :destination, :created_at, :updated_at
json.url flight_url(flight, format: :json)
