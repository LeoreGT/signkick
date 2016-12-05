class DeafUser < ApplicationRecord
  belongs_to :user
  has_many :language_skills, as: :owner
  has_many :languages, through: :language_skills
  has_many :bookings
  validates :name, presence: :true, uniqueness: :true
end
