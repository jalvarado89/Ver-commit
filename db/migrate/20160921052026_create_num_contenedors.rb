class CreateNumContenedors < ActiveRecord::Migration[5.0]
  def change
    create_table :num_contenedors do |t|
      t.string :Sigla
      t.string :Numero
      t.string :Marchamo
      t.string :Temperatura
      t.integer :Cant_Ejes
      t.boolean :Activo      

      t.timestamps
    end
  end
end
