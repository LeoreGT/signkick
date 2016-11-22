class Booking < ApplicationRecord
  belongs_to :interpreter
  belongs_to :deaf_user
  validates :interpreter, presence: :true, uniqueness: { scope: :booking_date }
  validates :deaf_user, presence: :true
  validates :booking_date, presence: :true
  validates :price, presence: :true
end
