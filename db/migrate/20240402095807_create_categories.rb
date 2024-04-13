class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
