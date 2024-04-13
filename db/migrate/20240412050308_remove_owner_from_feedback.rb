class RemoveOwnerFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_reference :feedbacks, :owner, foreign_key: true
  end
end
