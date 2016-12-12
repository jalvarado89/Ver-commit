class AddUserRefToRetiro < ActiveRecord::Migration[5.0]
  def change
    add_reference :retiros, :asignation, foreign_key: true
    add_reference :retiros, :num_contenedor, foreign_key: true
    add_reference :retiros, :driver, foreign_key: true
    add_reference :retiros, :truck, foreign_key: true
    add_reference :retiros, :implement, foreign_key: true    
  end
end
