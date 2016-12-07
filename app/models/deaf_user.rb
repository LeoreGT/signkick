class DeafUser < ApplicationRecord
  belongs_to :user
  has_many :language_skills, as: :owner
  has_many :languages, through: :language_skills
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: :true, uniqueness: :true
  mount_uploader :photo, PhotoUploader
end
