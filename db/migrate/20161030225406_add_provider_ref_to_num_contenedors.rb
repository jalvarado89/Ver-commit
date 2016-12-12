class AddAsignationRefToNumContenedors < ActiveRecord::Migration[5.0]
  def change
    add_reference :num_contenedors, :asignation, foreign_key: true
  end
end
