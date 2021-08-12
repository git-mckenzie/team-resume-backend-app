class Student < ApplicationRecord
  has_many :experiences
  has_many :education
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :capstones
end
