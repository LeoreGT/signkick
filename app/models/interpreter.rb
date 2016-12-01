class Interpreter < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :language_skills, as: :owner
  has_many :languages, through: :language_skills
  # has_many :tags, through: :interpreter_tag
  validates :name, presence: :true, uniqueness: :true
  validates :bio, presence: :true
  validates :location, presence: :true

  mount_uploader :photo, PhotoUploader


  def update_averages
    reviews = self.reviews
    self.friendliness        = reviews.average(:friendliness)
    self.professionalism     = reviews.average(:professionalism)
    self.punctuality         = reviews.average(:punctuality)
    self.language_skill      = reviews.average(:language_ability)
    self.overall_performance = (self.friendliness + self.professionalism + self.punctuality + self.language_ability) / 4.0
    self.save
  end

  # def update_averages
  #   reviews = self.reviews
  #   number_of_review = reviews.count
  #   self.friendliness = self.friendliness ? ( (self.friendliness * (count - 1) ) + reviews.last.friendliness) / count.to_f : reviews.first.friendliness
  #   self.professionalism     = self.professionalism ? ( (self.professionalism * (count - 1) ) + reviews.last.professionalism) / count.to_f : reviews.first.professionalism
  #   self.punctuality         = self.punctuality ? ( (self.punctuality * (count - 1) ) + reviews.last.punctuality) / count.to_f : reviews.first.punctuality
  #   self.language_skill      = self.language_skill ? ( (self.language_skill * (count - 1) ) + reviews.last.language_skill) / count.to_f : reviews.first.language_skill
  #   self.overall_performance = (self.friendliness + self.professionalism + self.punctuality + self.language_skill) / 4.0
  # end

end
