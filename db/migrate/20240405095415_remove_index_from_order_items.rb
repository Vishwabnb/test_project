class RemoveIndexFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_index :order_items, name: "index_order_items_on_feedback_type_and_feedback_id"

  end
end
