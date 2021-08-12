class EducationController < ApplicationController
  def index
    education = Education.all
    render json: education
  end

  def create
    education = Education.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      degree: params["degree"],
      university_name: params["university_name"],
      details: params["details"],
      student_id: params["student_id"],
    )
    if education.save
      render json: education
    else
      render json: { errors: education.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    education_id = params[:id]
    parks = Education.find(education_id)
    render json: education
  end

  def update
    education_id = params[:id]
    education = Education.find_by(id: education_id)
    education.start_date = params["start_date"] || education.start_date
    education.end_date = params["end_date"] || education.end_date
    education.degree = params["degree"] || education.degree
    education.size = params["size"] || education.size
    parks.image_url = params["image_url"] || parks.image_url
    if parks.save
      render json: parks
    else
      render json: { errors: parks.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    parks_id = params[:id]
    parks = Park.find_by(id: parks_id)
    parks.destroy
    render json: { message: "You have deleted the park!" }
  end
end
