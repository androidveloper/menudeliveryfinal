json.array!(@lunches) do |lunch|
  json.extract! lunch, :id, :name, :description, :price, :pricemenu, :quantity, :fecha, :tipoplato_id, :tipomenu_id, :restaurant_id
  json.url lunch_url(lunch, format: :json)
end
