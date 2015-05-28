class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :id_user
      t.string :password
      t.string :username
      t.string :address
      t.string :phone_number
      t.string :email  

      t.timestamps null: false
    end
  end
end
