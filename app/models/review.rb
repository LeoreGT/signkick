class Review < ApplicationRecord
  belongs_to :booking

  def self.average_overall(interpreter)
    average(:overall_performance)
  end

end

