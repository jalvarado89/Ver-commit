class AddClientesRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :cliente_navieras, foreign_key: true
  end
end
