class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :bio, :linkedin_url, :website, :resume_url, :github_url, :twitter_handle, :photo_url, :skills
  has_many :experiences
  has_many :education
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :capstones
end
