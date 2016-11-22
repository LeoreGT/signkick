class InterpreterTag < ApplicationRecord
  belongs_to :tag
  belongs_to :interpreter
  validates :tag, uniqueness: { scope: :interpreter }
end
