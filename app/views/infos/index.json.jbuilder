json.array!(@infos) do |info|
  json.extract! info, :id, :title, :content, :image
  json.url info_url(info, format: :json)
end
