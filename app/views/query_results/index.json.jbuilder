json.array!(@query_results) do |query_result|
  json.extract! query_result, :query_id, :page_id, :result_id, :position
  json.url query_result_url(query_result, format: :json)
end
