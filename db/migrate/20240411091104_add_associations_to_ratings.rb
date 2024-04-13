class AddAssociationsToRatings < ActiveRecord::Migration[5.2]
  def change
    add_reference :ratings, :shop, foreign_key: true
    add_reference :ratings, :order, foreign_key: true
    add_reference :ratings, :owner, foreign_key: true
    add_reference :ratings, :item, foreign_key: true
  end
end
