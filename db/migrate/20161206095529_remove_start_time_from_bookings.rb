class RemoveStartTimeFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :start_time
    change_column :bookings, :booking_date, :datetime
  end
end
