class AddRutaRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :route, foreign_key: true
  end
end
