class CreateStoreInventory < ActiveRecord::Migration[7.0]
  def change
    create_table :store_inventories do |t|
      t.string :item
      t.integer :existences
      t.decimal :price
      t.string :place

      t.timestamps
    end
  end
end
