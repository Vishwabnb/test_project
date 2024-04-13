class Shop < ApplicationRecord
  has_and_belongs_to_many :owners
  has_many :customers,dependent: :destroy
  has_many :feedbacks, as: :feedbackable

  validates :name, presence: true  
  validates :city, presence: true
  validates :address, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_no, presence: true, length: { is: 10 }, numericality: { only_integer: true }
end