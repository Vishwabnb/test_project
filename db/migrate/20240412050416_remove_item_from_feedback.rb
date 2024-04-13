class RemoveItemFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_reference :feedbacks, :item, foreign_key: true
  end
end
