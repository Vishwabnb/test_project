class AddOrderDateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :date, :datetime
  end
end
