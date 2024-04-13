class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
  has_many :ratings, as: :rateable

  validates :quantity, presence: true
  validates :shipping_cost, presence: true, numericality: { greater_than: 0, less_than: 1000 }
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }

end
