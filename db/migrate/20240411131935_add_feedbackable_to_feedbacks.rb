class AddFeedbackableToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedbacks, :feedbackable, polymorphic: true
  end
end
