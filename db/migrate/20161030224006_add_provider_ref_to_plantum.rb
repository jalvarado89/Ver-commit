class AddCompanyRefToPlantum < ActiveRecord::Migration[5.0]
  def change
    add_reference :plantum, :companies, foreign_key: true
  end
end
