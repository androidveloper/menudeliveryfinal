json.array!(@tipomenus) do |tipomenu|
  json.extract! tipomenu, :id, :name, :description, :codigo
  json.url tipomenu_url(tipomenu, format: :json)
end
