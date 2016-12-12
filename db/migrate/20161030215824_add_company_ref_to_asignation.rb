class AddCompanyRefToAsignations < ActiveRecord::Migration[5.0]
  def change
    add_reference :asignations, :company, foreign_key: true    
  end
end
