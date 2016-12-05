class AddCompanyRefToAsignation < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :companies, foreign_key: true
  end
end
