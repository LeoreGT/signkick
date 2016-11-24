class Interpreter < ApplicationRecord
  belongs_to :user
  validates :name, presence: :true, uniqueness: :true
  validates :bio, presence: :true
  validates :location, presence: :true

  mount_uploader :photo, PhotoUploader

end
