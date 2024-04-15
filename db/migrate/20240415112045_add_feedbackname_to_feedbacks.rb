class AddFeedbacknameToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :feedbackname, :string
  end
end
