class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.datetime :date
      t.references :order, foreign_key: true
      t.string :status
      t.string :method

      t.timestamps
    end
  end
end
