json.array!(@pais) do |pai|
  json.extract! pai, :id, :descricao
  json.url pai_url(pai, format: :json)
end
