json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :avatar, :supervisor, :regulation, :description, :email
  json.url club_url(club, format: :json)
end
