class AddPredioRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :predio, foreign_key: true    
  end
end
