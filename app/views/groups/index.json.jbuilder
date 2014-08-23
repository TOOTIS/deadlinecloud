json.array!(@groups) do |group|
  json.extract! group, :id, :name, :created_at
  #json.url group_url(group, format: :json)
end
