class UpdateDateBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :end_time
    add_column :bookings, :booking_date, :date
    add_column :bookings, :duration, :integer
    change_column :bookings, :start_time, :time
  end
end
