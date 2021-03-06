class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :nickname
      t.integer :status, default: 0
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.date :birthday
      t.string :remember_token, limit: 128, null: false
      t.timestamps null: false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
