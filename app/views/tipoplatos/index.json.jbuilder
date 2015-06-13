json.array!(@tipoplatos) do |tipoplato|
  json.extract! tipoplato, :id, :name, :description, :codigo
  json.url tipoplato_url(tipoplato, format: :json)
end
