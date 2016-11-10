class AddProviderRefToPlantum < ActiveRecord::Migration[5.0]
  def change
    add_reference :planta, :companies, foreign_key: true
  end
end
