json.extract! predio, :id, :Nombre, :Telefono, :Correo, :Direccion, :companies_id, :created_at, :updated_at
json.url predio_url(predio, format: :json)