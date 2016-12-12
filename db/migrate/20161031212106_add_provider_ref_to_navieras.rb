class AddCompanyRefToNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :navieras, :company, foreign_key: true
  end
end
