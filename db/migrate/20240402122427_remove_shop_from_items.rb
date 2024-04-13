class RemoveShopFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :shop, foreign_key: true
  end
end
