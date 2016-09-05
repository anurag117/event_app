class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.float :ticket_fee
      t.datetime :start_time
      t.float :duration

      t.timestamps
    end
  end
end
