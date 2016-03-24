json.array!(@entities) do |entity|
  json.extract! entity, :id, :email, :name
  json.url entity_url(entity, format: :json)
end
