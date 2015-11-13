class Bid < ActiveRecord::Base
  belongs_to :item

  validates_presence_of :amount, message: 'cannot be blank!'
end
