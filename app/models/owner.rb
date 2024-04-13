class Owner < ApplicationRecord
  has_and_belongs_to_many :shop 
  has_many :feedbacks, as: :feedbackable 

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true,  length: { is: 10 }, numericality: { only_integer: true }
  validate :dobvalidate
  validates :age , presence: true , length: { is: 2 }, numericality: { only_integer: true }

  def dobvalidate
    if dob.present? && dob > Date.current
      errors.add(:dob, "not valid !!")
    end
  end
end
