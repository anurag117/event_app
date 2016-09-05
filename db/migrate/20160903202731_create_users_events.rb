class CreateUsersEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events_users, id: false do |t|
      t.integer :user_id, index: true
      t.integer :event_id, index: true
    end
  end
end
