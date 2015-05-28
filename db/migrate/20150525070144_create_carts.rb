class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :post_id 
      t.string :color
      t.integer :figure
      t.string :size
 
      t.timestamps null: false
    end
  end
end
