class AddUsersRefToRetiros < ActiveRecord::Migration[5.0]
  def change
    add_reference :retiros, :asignations, foreign_key: true
    add_reference :retiros, :num_contenedors, foreign_key: true
    add_reference :retiros, :drivers, foreign_key: true
    add_reference :retiros, :trucks, foreign_key: true
    add_reference :retiros, :implements, foreign_key: true    
  end
end
