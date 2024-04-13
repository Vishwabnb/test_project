class ChangeStatusColumnTypeInOrders < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :orders, :status, :string
   end
  
   def down
      change_column :orders, :status, :integer
   end
  end
end
