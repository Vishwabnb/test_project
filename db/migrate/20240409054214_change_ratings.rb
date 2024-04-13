class ChangeRatings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :ratings, :customer, polymorphic: true
    add_reference :ratings, :rateable, polymorphic: true
  end
end
