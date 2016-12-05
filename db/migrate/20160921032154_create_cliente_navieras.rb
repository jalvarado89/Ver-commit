class CreateClienteNavieras < ActiveRecord::Migration[5.0]
  def change
    create_table :cliente_navieras do |t|
      t.string :Nombre
      t.string :Telefono
      t.string :Correo      

      t.timestamps
    end
  end
end
