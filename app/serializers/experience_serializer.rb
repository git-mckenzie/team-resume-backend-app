class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :job_title,:company,:details

  belongs_to :student
end
