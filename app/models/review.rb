class Review < ApplicationRecord
  belongs_to :booking
  has_one :interpreter, through: :booking
  has_one :deaf_user, through: :booking
  validates :friendliness, presence: true
  validates :punctuality, presence: true
  validates :professionalism, presence: true
  validates :language_ability, presence: true
end

