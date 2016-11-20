# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create(Nombre: 'Cosiarma', Telefono: 'erhtrh', Correo: 'egreh', Direccion: 'rhwn')
Naviera.create(Nombre: 'Cosiarma', Telefono: 'erhtrh', Correo: 'egreh', Direccion: 'rhwn', companies_id: Company.first.id)
