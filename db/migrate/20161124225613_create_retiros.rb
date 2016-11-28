class CreateRetiros < ActiveRecord::Migration[5.0]
  def change
    create_table :retiros do |t|
      t.string :fecha

      t.timestamps
    end
  end
end
