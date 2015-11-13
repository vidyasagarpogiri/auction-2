class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.integer :mininum_bid
      t.integer :bid_increment
      t.text :image
      t.text :donator

      t.timestamps null: false
    end
  end
end
