json.array!(@localidades) do |localidade|
  json.extract! localidade, :id, :cod_postal, :localidade, :cidade, :pais_id
  json.url localidade_url(localidade, format: :json)
end
