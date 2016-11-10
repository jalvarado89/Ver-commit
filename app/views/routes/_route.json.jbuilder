json.extract! route, :id, :Nombre, :Precio_Empresa, :Precio_Chofer, :companies_id, :created_at, :updated_at
json.url route_url(route, format: :json)