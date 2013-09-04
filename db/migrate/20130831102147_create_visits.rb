class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :venue
      t.string :country
      t.date :date
      t.integer :price
      t.integer :ambience
      t.integer :tea
      t.integer :scones
      t.integer :savoury
      t.integer :sweets
      t.integer :service
      t.integer :bonus
      t.text :comments

      t.timestamps
    end
  end
end
