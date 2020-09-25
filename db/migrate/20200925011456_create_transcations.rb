class CreateTranscations < ActiveRecord::Migration[6.0]
  def change
    create_table :transcations do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :tr_qty
      t.float :tr_value
      t.string :Trans_type
      t.integer :superseded_by

      t.timestamps
    end
  end
end
