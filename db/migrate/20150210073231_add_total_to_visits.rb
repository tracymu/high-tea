class AddTotalToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :total, :decimal, :precision => 3, :scale => 1
  end
end
