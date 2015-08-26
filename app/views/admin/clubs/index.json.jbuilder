json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :logo, :supervisor, :regulation, :description, :email
  json.url club_url(club, format: :json)
end
