json.array!(@perfilclientes) do |perfilcliente|
  json.extract! perfilcliente, :id, :cliente_id, :perfil_id
  json.url perfilcliente_url(perfilcliente, format: :json)
end
