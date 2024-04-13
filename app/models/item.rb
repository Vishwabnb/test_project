class Item < ApplicationRecord
  belongs_to :category
  has_many :items,  dependent: :destroy
  has_many :feedbacks, as: :feedbackable

  validates :name, presence: true
  validates :stock, presence: true, numericality: { only_integer: true }
  validates :price , presence: true , numericality: { only_decimal: true }
end
