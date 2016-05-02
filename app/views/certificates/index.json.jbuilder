json.array!(@certificates) do |certificate|
  json.extract! certificate, :id, :provider_id, :owner_id, :grade, :type, :public_comment, :private_comment, :activity_id
  json.url certificate_url(certificate, format: :json)
end
