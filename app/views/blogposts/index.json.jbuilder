json.array!(@blogposts) do |blogpost|
  json.extract! blogpost, :id, :title, :subtitle, :link, :image, :body
  json.url blogpost_url(blogpost, format: :json)
end
