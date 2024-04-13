class CreateJoinTableShopsOwners < ActiveRecord::Migration[5.2]
  def change
    create_join_table :shops, :owners do |t|
      # t.index [:shop_id, :owner_id]
      # t.index [:owner_id, :shop_id]
    end
  end
end
