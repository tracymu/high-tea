class RemoveCurrencyColumn < ActiveRecord::Migration
  def change
  	remove_column :visits, :currency
  end

end
