class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :message
      t.integer :total
      t.string :color
      t.integer :figure
      t.string :size
      t.integer :point
      t.string :delivery

      t.timestamps null: false
    end
  end
end
