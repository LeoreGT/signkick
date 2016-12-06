class Booking < ApplicationRecord
  belongs_to :deaf_user
  belongs_to :interpreter
  has_many :reviews
  validates :interpreter, presence: :true
  validates :deaf_user, presence: :true
  validates :start_time, presence: :true
  validates :end_time, presence: :true
  validate :booking_in_future?
  validate :start_time_before_end_time?

  def booking_in_future?
    if start_time < Date.current
      errors.add(:start_time, 'booking date must be in the future')
    end
  end

  def start_time_before_end_time?
    if end_time < start_time
      errors.add(:end_time, 'Booking date must be after booking date')
    end
  end
end
