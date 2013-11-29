json.array!(@queries) do |query|
  json.extract! query, :run_id, :url, :response
  json.url query_url(query, format: :json)
end
