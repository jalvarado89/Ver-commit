class AddDriverRefToTrucks < ActiveRecord::Migration[5.0]
  def change
    add_reference :trucks, :driver, foreign_key: true
  end
end
