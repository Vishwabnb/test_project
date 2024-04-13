class DropCusomers < ActiveRecord::Migration[5.2]
  def change
    drop_table :cusomers
  end
end
