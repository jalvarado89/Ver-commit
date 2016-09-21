class CreateClienteNavieras < ActiveRecord::Migration[5.0]
  def change
    create_table :cliente_navieras do |t|
      t.serial :Id
      t.string :Nombre
      t.string :Telefono
      t.string :Correo
      t.integer :Id_Naviera

      t.timestamps
    end
  end
end
