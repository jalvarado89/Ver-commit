class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :Nombre
      t.string :Cedula
      t.string :Telefono

      t.timestamps
    end
  end
end
