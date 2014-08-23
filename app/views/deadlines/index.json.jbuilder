json.array!(@deadlines) do |deadline|
  json.extract! deadline, :id, :title, :description, :group_id
  #json.url deadline_url(deadline, format: :json)
end
