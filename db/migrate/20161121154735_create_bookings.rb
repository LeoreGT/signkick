class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.integer :price
      t.references :interpreter, foreign_key: true
      t.references :deaf_user, foreign_key: true

      t.timestamps
    end
  end
end
