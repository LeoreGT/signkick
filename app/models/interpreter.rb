class Interpreter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: :true, uniqueness: :true
  validates :bio, presence: :true
  validates :location, presence: :true
end
