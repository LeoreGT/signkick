class Review < ApplicationRecord
  belongs_to :deaf_user
  belongs_to :interpreter
  validates :content, presence: :true
  validates :overall_experience, presence: :true
end
