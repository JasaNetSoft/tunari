json.extract! enviar, :id, :username, :remitente, :destinatario, :referencia, :numero, :fecha, :estado, :tipo, :lugar, :nulo, :created_at, :updated_at
json.url enviar_url(enviar, format: :json)