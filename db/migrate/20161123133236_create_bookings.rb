class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.date :booking_date
      t.references :deaf_user, foreign_key: true
      t.references :interpreter, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
