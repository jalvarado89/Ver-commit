class AddCompanyRefToPredios < ActiveRecord::Migration[5.0]
  def change
    add_reference :predios, :company, foreign_key: true
  end
end
