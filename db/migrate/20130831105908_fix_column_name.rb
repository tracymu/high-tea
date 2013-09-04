class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :visits, :country, :city
  end
end
