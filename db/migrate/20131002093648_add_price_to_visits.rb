class AddPriceToVisits < ActiveRecord::Migration
  def change
  	add_money :visits, :price
  end
end
