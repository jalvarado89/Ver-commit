class AddUserRefToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :companies, foreign_key: true
  end
end
