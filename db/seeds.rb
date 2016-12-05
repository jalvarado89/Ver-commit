# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create(Nombre: 'Transportes Juanva', Telefono: '2473-3751', Correo: 'info@transportesjuanva.com', Direccion: 'Pital')
User.create(Nombre: "Jason", Apellidos: "Alvarado Ch.", Telefono: "8654-6540", email: "tpizo@hotmail.com", password_digest: "legolas2416", tipo: "Administrador", Activo: true, companies_id: 1)
Company.create(Nombre: 'Visa', Telefono: 'sdgdh', Correo: 'vsdbbs', Direccion: 'Pital')
Naviera.create(Nombre: 'Marfret', Telefono: 'erhtrh', Correo: 'egreh', Direccion: 'rhwn', company_id: 2)
ClienteNaviera.create(Nombre: 'Kiwi', Telefono: 'erhtrh', Correo: 'egreh', navieras_id: 1)
Plantum.create(Nombre: 'Visa', Telefono: 'erhtrh', Correo: 'egreh', Direccion: 'rhwn', companies_id: 2)
Predio.create(Nombre: 'Grant', Telefono: 'erhtrh', Correo: 'egreh', Direccion: 'rhwn', companies_id: 2)
Route.create(Nombre: 'Visa-Limon', Precio_Empresa_2Ejes: 600, Precio_Empresa_3Ejes: 600, Precio_Chofer: 230000, companies_id: 2)
Asignation.create(Num_Semana: 675, fecha: '2016-11-24', hora: '09:00', Activo: true, companies_id: 2, predios_id: 1, predios_id2: 1, plantum_id: 1, cliente_navieras_id: 1, routes_id: 1, navieras_id: 1)

Driver.create(Nombre: 'Nacho', Cedula: '2-569-899', Telefono: '57567786')
Truck.create(Placa: 'C-158219', Modelo: '2013', Marca: 'gergg', drivers_id: 1)
Implement.create(Num_Chasis: '02', Num_Placa: 'S-56547', Empresa: 'Transportes Juanva', trucks_id: 1)
