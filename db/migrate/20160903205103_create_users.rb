class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :phone_number
      t.string :email_id
      t.string :password_digest
      t.boolean :admin, default: false

      t.timestamps
    end

    add_index :users, :phone_number, unique: true
  end
end
