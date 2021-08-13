class EducationController < ApplicationController
  before_action :authenticate_user

  def index
    education = Education.where("student_id = ?", current_user.id)
    render json: education
  end

  def create
    education = Education.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      degree: params["degree"],
      university_name: params["university_name"],
      details: params["details"],
      student_id: current_user.id,
    )
    if education.save
      render json: education
    else
      render json: { errors: education.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    education_id = params[:id]
    education = Education.find(education_id)
    render json: education
  end

  def update
    education_id = params[:id]
    education = Education.find_by(id: education_id)
    education.start_date = params["start_date"] || education.start_date
    education.end_date = params["end_date"] || education.end_date
    education.degree = params["degree"] || education.degree
    education.university_name = params["university_name"] || education.university_name
    education.details = params["details"] || education.details
    education.student_id = current_user.id || education.student_id
    if education.save
      render json: education
    else
      render json: { errors: education.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    education_id = params[:id]
    education = Education.find_by(id: education_id)
    education.destroy
    render json: { message: "Confirmation: Deleted!" }
  end
end
