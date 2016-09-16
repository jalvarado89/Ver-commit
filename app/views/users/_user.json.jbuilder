json.extract! user, :id, :Id, :Nombre, :Apellidos, :Empresa, :Telefono, :Correo, :Nick, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)