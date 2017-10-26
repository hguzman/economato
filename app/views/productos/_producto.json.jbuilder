json.extract! producto, :id, :descripcion, :medida_id, :valor, :created_at, :updated_at
json.url producto_url(producto, format: :json)
