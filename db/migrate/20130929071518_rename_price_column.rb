class RenamePriceColumn < ActiveRecord::Migration
  def change

  	rename_column :visits, :price, :price_cents

  end
end
