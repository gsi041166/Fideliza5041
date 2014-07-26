json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cartao, :nome, :data_nasc, :obs, :rua, :acumulado, :activo, :profissao_id, :grupocliente_id, :localidade_id, :loja_id, :vendedor_id, :sexo_id
  json.url cliente_url(cliente, format: :json)
end
