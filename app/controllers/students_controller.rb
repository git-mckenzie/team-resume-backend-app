class StudentsController < ApplicationController
  before_action :authenticate_user

  def index
    student = Student.all
    render json: student
  end

  def create
    student = Student.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: params["phone_number"],
      bio: params["bio"],
      linkedin_url: params["linkedin_url"],
      twitter_handle: params["twitter_handle"],
      website: params["website"],
      resume_url: params["resume_url"],
      github_url: params["github_url"],
      photo_url: params["photo_url"],
    )
    if student.save
      render json: student
    else
      render json: { error: student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    student_id = params["id"]
    student = Student.find(student_id)
    render json: student
  end

  def update
    student_id = params["id"]
    student = Student.find_by(id: student_id)
    student.first_name = params["first_name"] || student.first_name
    student.last_name = params["last_name"] || student.last_name
    student.email = params["email"] || student.email
    student.password = params["password"] || student.password
    student.password_confirmation = params["password_confirmation"] || student.password_confirmation
    student.phone_number = params["phone_number"] || student.phone_number
    student.bio = params["bio"] || student.bio
    student.linkedin_url = params["linkedin_url"] || student.linkedin_url
    student.twitter_handle = params["twitter_handle"] || student.twitter_handle
    student.website = params["website"] || student.website
    student.resume_url = params["resume_url"] || student.resume_url
    student.github_url = params["github_url"] || student.github_url
    student.photo_url = params["photo_url"] || student.photo_url

    if student.save
      render json: student
    else
      render json: { error: student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    student_id = params["id"]
    student = Student.find_by(id: student_id)
    student.destroy
    render json: { message: "Student successfully deleted" }
  end
end
