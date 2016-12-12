class AddNavieraRefToClienteNavieras < ActiveRecord::Migration[5.0]
  def change
    add_reference :cliente_navieras, :naviera, foreign_key: true
  end
end
