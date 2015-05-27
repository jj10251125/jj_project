class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :message
      t.integer :total

      t.timestamps null: false
    end
  end
end
