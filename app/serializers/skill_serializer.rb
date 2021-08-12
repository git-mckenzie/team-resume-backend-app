class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :student_skills
  has_many :students, through: :student_skills
end
