class CreateImplements < ActiveRecord::Migration[5.0]
  def change
    create_table :implements do |t|
      t.string :Num_Chasis
      t.string :Num_Placa
      t.string :Empresa      

      t.timestamps
    end
  end
end
