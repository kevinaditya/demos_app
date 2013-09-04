json.array!(@terms) do |term|
  json.extract! term, :content, :order
  json.url term_url(term, format: :json)
end