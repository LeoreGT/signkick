class Tag < ApplicationRecord
  validates :name, presence: :true, uniqueness: :true
  has_many :interpreter_tags, dependent: :destroy
end
