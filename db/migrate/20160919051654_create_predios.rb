class CreatePredios < ActiveRecord::Migration[5.0]
  def change
    create_table :predios do |t|
      t.string :Nombre
      t.string :Telefono
      t.string :Correo
      t.string :Direccion      

      t.timestamps
    end
  end
end
