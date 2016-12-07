class Review < ApplicationRecord
  belongs_to :booking
  has_one :interpreter, through: :booking
  has_one :deaf_user, through: :booking
end

