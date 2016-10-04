class CreateAsignations < ActiveRecord::Migration[5.0]
  def change
    create_table :asignations do |t|
      t.serial :Cod_Asignacion
      t.integer :Num_Semana
      t.string :Fecha_Colocacion
      t.string :Hora_Colocacion
      t.boolean :Activo
      t.integer :Cod_Empresa
      t.integer :Cod_Predio_Retiro
      t.integer :Cod_Predio_Entrega
      t.integer :Cod_Planta
      t.integer :Cod_Naviera
      t.integer :Cod_Cliente
      t.integer :Cod_Ruta

      t.timestamps
    end
  end
end
