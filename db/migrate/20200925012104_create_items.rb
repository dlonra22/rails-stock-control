class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :qty
      t.integer :restock_level
      t.datetime :expirey_date

      t.timestamps
    end
  end
end
