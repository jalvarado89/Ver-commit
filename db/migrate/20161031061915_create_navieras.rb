class CreateNavieras < ActiveRecord::Migration[5.0]
  def change
    create_table :navieras do |t|      
      t.string :Nombre
      t.string :Telefono
      t.string :Correo
      t.string :Direccion

      t.timestamps
    end
  end
end
