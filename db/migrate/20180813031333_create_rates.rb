class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.string :content
      t.integer :product_id
      t.integer :user_id
      t.integer :parent_id
      
      t.timestamps
    end
  end
end
