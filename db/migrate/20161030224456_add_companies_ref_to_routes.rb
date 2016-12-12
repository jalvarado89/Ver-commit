class AddCompaniesRefToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_reference :routes, :companies, foreign_key: true
  end
end
