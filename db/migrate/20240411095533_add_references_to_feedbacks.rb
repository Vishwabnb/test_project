class AddReferencesToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedbacks, :order, foreign_key: true
  end
end
