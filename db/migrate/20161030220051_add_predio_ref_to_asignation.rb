class AddPredioRefToAsignation < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :predios, foreign_key: true
  end
end
