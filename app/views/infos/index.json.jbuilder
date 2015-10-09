json.array!(@infos) do |info|
  json.extract! info, :id, :title, :content, :avatar
  json.url info_url(info, format: :json)
end
