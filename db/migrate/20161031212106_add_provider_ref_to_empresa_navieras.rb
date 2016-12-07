class AddProviderRefToEmpresaNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :company, :navieras, foreign_key: true
  end
end
