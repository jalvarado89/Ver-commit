class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.serial :Id
      t.string :Placa
      t.string :Modelo
      t.string :Marca
      t.integer :Driver_Id

      t.timestamps
    end
  end
end
