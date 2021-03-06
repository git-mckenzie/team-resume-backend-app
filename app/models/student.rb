class Student < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :experiences
  has_many :education
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :capstones
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
