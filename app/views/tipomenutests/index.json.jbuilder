json.array!(@tipomenutests) do |tipomenutest|
  json.extract! tipomenutest, :id, :name, :description
  json.url tipomenutest_url(tipomenutest, format: :json)
end
