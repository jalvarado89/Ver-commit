class AddDriverRefToTrucks < ActiveRecord::Migration[5.0]
  def change
    add_reference :trucks, :drivers, foreign_key: true
  end
end
