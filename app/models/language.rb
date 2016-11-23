class Language < ApplicationRecord
  alidates :name, presence: :true, uniqueness: :true
end
