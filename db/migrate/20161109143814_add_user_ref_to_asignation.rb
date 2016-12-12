class AddNavieraRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :naviera, foreign_key: true
  end
end
