class AddProviderRefToAsignation < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :routes, foreign_key: true
  end
end
