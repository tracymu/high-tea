class ChangeDataTypeForCostV2 < ActiveRecord::Migration
  def change

  	change_column :visits, :price, :integer

  end
end
