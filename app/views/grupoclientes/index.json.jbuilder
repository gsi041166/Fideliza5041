json.array!(@grupoclientes) do |grupocliente|
  json.extract! grupocliente, :id, :descricao, :racio
  json.url grupocliente_url(grupocliente, format: :json)
end
