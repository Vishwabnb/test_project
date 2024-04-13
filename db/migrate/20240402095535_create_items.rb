class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :category, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
