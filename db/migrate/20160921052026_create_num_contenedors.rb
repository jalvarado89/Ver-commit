class CreateNumContenedors < ActiveRecord::Migration[5.0]
  def change
    create_table :num_contenedors do |t|
      t.serial :Id
      t.string :Sigla
      t.string :Numero
      t.string :Marchamo
      t.string :Temperatura
      t.integer :Cant_Ejes
      t.boolean :Activo
      t.integer :Cod_Asignacion

      t.timestamps
    end
  end
end
