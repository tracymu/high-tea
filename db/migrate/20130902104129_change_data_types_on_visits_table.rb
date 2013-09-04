class ChangeDataTypesOnVisitsTable < ActiveRecord::Migration
  def change
  	change_column :visits, :price, :decimal, :precision => 7, :scale => 2
  	
  end
end
