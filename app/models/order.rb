class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :payments, dependent: :destroy
  has_many :feedbacks, as: :feedbackable

  enum status: {
    pending: 0,
    complated: 1,
    archived: 2 
  }

  validates :subtotal, presence: true,  numericality: { greater_than_or_equal_to: 0 }
  validates :item_discount, presence: true, numericality: { only_float: true }
  validates :grand_total, presence: true,  numericality: { greater_than_or_equal_to: 0 }
  validate :datevalidate

  def datevalidate
    if date.present? && date > Date.current
      errors.add(:date, "not valid !!")
    end
  end
end