class BidsController < InheritedResources::Base


  def new
    @bid  = Bid.new(item: Item.find(params['item']), bidder: params['bidder'])
    @bids = Bid.where(item: params['item'])
  end

  def create
    @bid = Bid.new(bid_params)
    item = Item.find(params['bid']['item_id'])
    @bid.item = item
    if @bid.save
      item && item.set_highest_bid(@bid.amount) && item.save!
      redirect_to new_bid_path(item: @bid.item, bidder: @bid.bidder)
    else
      render 'edit'
    end
  end

  def index
    @bids = Bid.joins(:item).all
  end

  def update
    @bid = Bid.find(params['id'])

  end

  private

    def bid_params
      params.require(:bid).permit(:amount, :item_id, :bidder)
    end
end

