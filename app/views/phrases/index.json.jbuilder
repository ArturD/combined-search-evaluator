json.array!(@phrases) do |phrase|
  json.extract! phrase, :text, :description
  json.url phrase_url(phrase, format: :json)
end
