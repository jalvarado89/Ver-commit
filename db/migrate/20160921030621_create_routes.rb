class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :Nombre
      t.integer :Precio_Empresa_2Ejes
      t.integer :Precio_Empresa_3Ejes
      t.integer :Precio_Chofer      

      t.timestamps
    end
  end
end
