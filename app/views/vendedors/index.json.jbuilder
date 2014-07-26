json.array!(@vendedors) do |vendedor|
  json.extract! vendedor, :id, :descricao
  json.url vendedor_url(vendedor, format: :json)
end
