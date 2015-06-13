json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :direccion, :ruc, :correo, :telefono, :estado, :contacto, :flagCriollo, :flagMarino, :flagChifa, :flagVegetariano, :flagPastas, :user_id, :distrito_id
  json.url restaurant_url(restaurant, format: :json)
end
