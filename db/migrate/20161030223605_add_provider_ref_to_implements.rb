class AddTruckRefToImplements < ActiveRecord::Migration[5.0]
  def change
    add_reference :implements, :truck, foreign_key: true
  end
end
