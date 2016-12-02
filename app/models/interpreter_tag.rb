class InterpreterTag < ApplicationRecord
  belongs_to :interpreter
  belongs_to :tag
  validates :tag, uniqueness: { scope: :interpreter }
end
