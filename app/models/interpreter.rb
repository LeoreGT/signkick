class Interpreter < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: :true, uniqueness: :true
  validates :bio, presence: :true
  validates :location, presence: :true
end
