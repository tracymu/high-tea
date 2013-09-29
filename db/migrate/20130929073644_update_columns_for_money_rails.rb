class UpdateColumnsForMoneyRails < ActiveRecord::Migration
  def change
		add_column  :visits, :price_currency, :string
  end
end
