class AddPlantumRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :plantum, foreign_key: true
  end
end
