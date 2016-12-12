class AddNavierasRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :navieras, foreign_key: true
  end
end
