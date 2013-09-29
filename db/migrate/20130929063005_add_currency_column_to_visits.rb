class AddCurrencyColumnToVisits < ActiveRecord::Migration
  def change
  	add_column :visits, :currency, :string
  end
end
