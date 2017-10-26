json.extract! detalle, :id, :producto_id, :cantidad, :consolidado_id, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)
