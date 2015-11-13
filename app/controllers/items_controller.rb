class ItemsController < InheritedResources::Base


  def index
    @items = Item.all
  end

  def show
    @item = Item.where(id: params['id']).includes(:bids).first
    @bids = @item.bids
    @item
  end


  private

    def item_params
      params.require(:item).permit(:name, :description, :mininum_bid, :bid_increment, :image, :donator)
    end
end

