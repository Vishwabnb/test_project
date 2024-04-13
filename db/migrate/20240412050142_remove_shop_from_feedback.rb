class RemoveShopFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_reference :feedbacks, :shop, foreign_key: true
  end
end
