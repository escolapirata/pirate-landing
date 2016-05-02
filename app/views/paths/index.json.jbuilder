json.array!(@paths) do |path|
  json.extract! path, :id, :name, :description, :owner_id, :creator_id, :image
  json.url path_url(path, format: :json)
end
