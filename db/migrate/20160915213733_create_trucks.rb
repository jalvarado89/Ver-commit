class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :Placa
      t.string :Modelo
      t.string :Marca

      t.timestamps
    end
  end
end
