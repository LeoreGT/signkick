class LanguageSkill < ApplicationRecord
  belongs_to :language
  belongs_to :owner, polymorphic: true
  validates :language, uniqueness: { scope: :owner }
end
