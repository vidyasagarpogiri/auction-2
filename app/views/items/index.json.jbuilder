json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :mininum_bid, :bid_increment, :image, :donator
  json.url item_url(item, format: :json)
end
