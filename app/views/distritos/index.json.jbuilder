json.array!(@distritos) do |distrito|
  json.extract! distrito, :id, :name
  json.url distrito_url(distrito, format: :json)
end
