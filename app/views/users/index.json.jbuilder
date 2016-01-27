json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_name, :email, :position, :api_key
  json.url user_url(user, format: :json)
end
