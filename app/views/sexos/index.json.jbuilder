json.array!(@sexos) do |sexo|
  json.extract! sexo, :id, :descricao
  json.url sexo_url(sexo, format: :json)
end
