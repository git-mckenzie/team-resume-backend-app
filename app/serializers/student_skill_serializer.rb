class StudentSkillSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :student
  belongs_to :skill
end
