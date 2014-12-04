json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :cliente_id, :tipocontacto_id, :contacto
  json.url contacto_url(contacto, format: :json)
end
