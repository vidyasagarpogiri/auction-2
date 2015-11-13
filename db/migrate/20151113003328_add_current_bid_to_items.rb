class AddCurrentBidToItems < ActiveRecord::Migration
  def change
    add_column :items, :current_bid, :integer
  end
end
