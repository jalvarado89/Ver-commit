class AddProviderRefToEmpresaNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :navieras, foreign_key: true
  end
end
