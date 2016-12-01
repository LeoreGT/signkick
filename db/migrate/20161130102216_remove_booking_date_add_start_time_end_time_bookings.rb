class RemoveBookingDateAddStartTimeEndTimeBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :booking_date
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime
  end
end
