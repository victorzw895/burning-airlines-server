json.extract! flight, :id, :dateTime, :origin, :destination, :airplane_id, :created_at, :updated_at
json.airplane do
    json.extract! flight.airplane, :planeNo
end
json.url flight_url(flight, format: :json)
