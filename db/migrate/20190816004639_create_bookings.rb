class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.date :date
      t.integer :retail_id
      t.integer :service_id
      t.boolean :iscancel

      t.timestamps
    end
  end
end
