class DeafUser < ApplicationRecord
  belongs_to :user
  has_many :language_skills, as: :owner
  has_many :languages, through: :language_skills
  validates :name, presence: :true, uniqueness: :true
end
