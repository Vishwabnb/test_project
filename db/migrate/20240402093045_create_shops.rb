class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :phone_no
      t.string :address
      t.string :city
      t.datetime :open_time
      t.datetime :close_time
      t.string :website
      t.string :email
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
