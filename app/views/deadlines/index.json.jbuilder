json.array!(@deadlines) do |deadline|
  json.extract! deadline, :id, :title, :description, :group_id, :user_id, :priority, :finish_on
  #json.url deadline_url(deadline, format: :json)
end
