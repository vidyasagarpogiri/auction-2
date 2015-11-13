class Item < ActiveRecord::Base
	has_many :bids

  def set_highest_bid(bid_amount)
    self.current_bid = bid_amount
  end
  
end
