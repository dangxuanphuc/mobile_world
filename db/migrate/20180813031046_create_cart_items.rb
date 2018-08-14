class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id, index: true
      t.integer :product_id, index: true
      t.integer :quantity
      t.decimal :price
      t.decimal :total_price
      
      t.timestamps
    end
  end
end
