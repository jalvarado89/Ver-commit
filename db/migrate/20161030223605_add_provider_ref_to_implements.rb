class AddProviderRefToImplements < ActiveRecord::Migration[5.0]
  def change
    add_reference :implements, :trucks, foreign_key: true
  end
end
