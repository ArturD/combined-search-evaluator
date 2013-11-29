json.array!(@results) do |result|
  json.extract! result, :page_id, :phrase_id, :score, :comment, :who
  json.url result_url(result, format: :json)
end
