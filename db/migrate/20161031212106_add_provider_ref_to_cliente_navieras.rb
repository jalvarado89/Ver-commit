class AddProviderRefToClienteNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :cliente_navieras, :navieras, foreign_key: true
  end
end
