json.array!(@lojas) do |loja|
  json.extract! loja, :id, :descricao
  json.url loja_url(loja, format: :json)
end
