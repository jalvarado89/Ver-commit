json.extract! cliente_naviera, :id, :Nombre, :Telefono, :Correo, :navieras_id, :created_at, :updated_at
json.url cliente_naviera_url(cliente_naviera, format: :json)
<option value="<%= naviera.id %>"><%= naviera.Nombre.titleize %></option>