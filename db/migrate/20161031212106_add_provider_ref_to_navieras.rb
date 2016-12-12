class AddCompanyRefToNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :navieras, :companies, foreign_key: true
  end
end
