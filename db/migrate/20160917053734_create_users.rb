class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.serial :Id
      t.string :Nombre
      t.string :Apellidos
      t.string :Empresa
      t.string :Telefono
      t.string :Correo
      t.string :Nick
      t.string :Password

      t.timestamps
    end
  end
end
