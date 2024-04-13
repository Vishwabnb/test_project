class AddCustomerReferenceToRatings < ActiveRecord::Migration[5.2]
  def change
    add_reference :ratings, :customer, foreign_key: true
  end
end
