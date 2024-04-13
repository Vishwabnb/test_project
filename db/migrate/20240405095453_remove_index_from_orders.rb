class RemoveIndexFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_index :orders, name: "index_orders_on_feedback_type_and_feedback_id"

  end
end
