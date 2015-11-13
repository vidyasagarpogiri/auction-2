class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :item, index: true, foreign_key: true
      t.string :bidder

      t.timestamps null: false
    end
  end
end
