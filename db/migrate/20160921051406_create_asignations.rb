class CreateAsignations < ActiveRecord::Migration[5.0]
  def change
    create_table :asignations do |t|      
      t.integer :Num_Semana
      t.string  :fecha
      t.string  :hora
      t.boolean :Activo
      t.integer :predios_id2
      t.timestamps
    end
  end
end
