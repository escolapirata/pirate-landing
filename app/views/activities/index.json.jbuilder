json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :owner, :timestamps
  json.url activity_url(activity, format: :json)
end
