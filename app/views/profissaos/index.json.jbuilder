json.array!(@profissaos) do |profissao|
  json.extract! profissao, :id, :descricao
  json.url profissao_url(profissao, format: :json)
end
