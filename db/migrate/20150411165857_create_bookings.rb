class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id
      t.integer :trainer_id

      t.timestamps null: false
    end
  end
end
