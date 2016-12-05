class CreatePlanta < ActiveRecord::Migration[5.0]
  def change
    create_table :planta do |t|
      t.string :Nombre
      t.string :Telefono
      t.string :Correo
      t.string :Direccion      

      t.timestamps
    end
  end
end
