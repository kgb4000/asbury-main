json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :time, :place, :address, :description
  json.url event_url(event, format: :json)
end
