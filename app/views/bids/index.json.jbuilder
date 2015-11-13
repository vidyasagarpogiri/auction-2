json.array!(@bids) do |bid|
  json.extract! bid, :id, :item_id, :bidder
  json.url bid_url(bid, format: :json)
end
