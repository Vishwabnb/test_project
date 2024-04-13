class Feedback < ApplicationRecord
  belongs_to :customer
  belongs_to :feedbackable, polymorphic: true
end
