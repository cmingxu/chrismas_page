json.array!(@users) do |user|
  json.extract! user, :id, :session_id, :weibo_account
  json.url user_url(user, format: :json)
end
