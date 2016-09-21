class CreatePlanta < ActiveRecord::Migration[5.0]
  def change
    create_table :planta do |t|
      t.serial :Id
      t.string :Nombre
      t.string :Telefono
      t.string :Correo
      t.string :Direccion
      t.integer :Id_Empresa

      t.timestamps
    end
  end
end
