class AddBookingtimeToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_time, :integer
  end
end
