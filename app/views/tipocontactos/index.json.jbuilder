json.array!(@tipocontactos) do |tipocontacto|
  json.extract! tipocontacto, :id, :descricao
  json.url tipocontacto_url(tipocontacto, format: :json)
end
