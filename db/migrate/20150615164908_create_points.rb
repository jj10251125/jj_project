class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :money
      t.string  :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
