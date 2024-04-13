class RemoveReferencesFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_reference :feedbacks, :order_item, foreign_key: true
    remove_reference :feedbacks, :order, foreign_key: true
    remove_reference :feedbacks, :shop, foreign_key: true
  end
end
