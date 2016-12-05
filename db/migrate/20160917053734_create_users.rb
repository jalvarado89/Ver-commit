class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|      
      t.string :Nombre
      t.string :Apellidos
      t.string :Telefono
      t.string :email      
      t.string :password_digest
      t.string :tipo
      t.boolean :Activo

      t.timestamps
    end
  end
end
