class Payment < ApplicationRecord
  belongs_to :order

  validates :amount, presence: true,  numericality: { greater_than_or_equal_to: 0 }
  validates :status, presence: true
  validates :method, presence: true

end
