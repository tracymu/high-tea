class ChangeScoresToDecimals < ActiveRecord::Migration
  def change

  	change_column :visits, :ambience, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :tea, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :scones, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :savoury, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :sweets, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :service, :decimal, :precision => 3, :scale => 1
  	change_column :visits, :bonus, :decimal, :precision => 3, :scale => 1
  	
  end
end
