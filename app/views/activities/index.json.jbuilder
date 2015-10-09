json.array!(@activities) do |activity|
  json.extract! activity, :id, :club_id, :title, :avatar, :description, :start_date, :finish_date, :address
  json.url activity_url(activity, format: :json)
end
