json.array!(@adventures) do |adventure|
  json.extract! adventure, :title, :description
  json.url adventure_url(adventure, format: :json)
end
