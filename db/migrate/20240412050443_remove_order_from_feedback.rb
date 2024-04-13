class RemoveOrderFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_reference :feedbacks, :order, foreign_key: true
  end
end
