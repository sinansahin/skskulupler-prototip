json.array!(@notices) do |notice|
  json.extract! notice, :id, :club_id, :title, :content, :avatar
  json.url notice_url(notice, format: :json)
end
