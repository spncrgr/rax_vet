json.array!(@users) do |user|
  json.extract! user, :id, :customer, :admin, :username, :password
  json.url user_url(user, format: :json)
end
