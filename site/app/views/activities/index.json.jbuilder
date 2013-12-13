json.array!(@activities) do |activity|
  json.extract! activity, :id, :atype, :user_id, :answer, :answer_match
  json.url activity_url(activity, format: :json)
end
