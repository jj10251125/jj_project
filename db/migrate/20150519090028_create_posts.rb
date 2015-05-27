class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :category
      t.string :color
      t.string :size
      t.string :title
      t.text   :content
      t.integer :price
      t.integer :point

      t.timestamps null: false
    end
  end
end
