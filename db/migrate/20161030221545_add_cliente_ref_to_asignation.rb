class AddClienteRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :cliente_naviera, foreign_key: true
  end
end
