class Booking < ApplicationRecord
  belongs_to :deaf_user
  belongs_to :interpreter
  has_many :reviews
  validates :interpreter, presence: :true
  validates :deaf_user, presence: :true
  validates :booking_date, presence: :true
  validates :duration, presence: :true
  validate :booking_in_future?

  def booking_in_future?
    if booking_date < Date.current
      errors.add(:booking_date, 'booking date must be in the future')
    end
  end

end
