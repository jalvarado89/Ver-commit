class AddPlantaRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :planta, foreign_key: true
  end
end
