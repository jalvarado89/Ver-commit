class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.serial :Id
      t.string :Nombre
      t.integer :Precio_Empresa
      t.integer :Precio_Chofer
      t.integer :Id_Empresa

      t.timestamps
    end
  end
end
