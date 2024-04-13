class RemoveIndexFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_index :customers, name: "index_customers_on_feedback_type_and_feedback_id"

  end
end
