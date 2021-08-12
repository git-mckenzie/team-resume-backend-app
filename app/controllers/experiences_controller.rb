class ExperiencesController < ApplicationController
  def index
    experience = Experience.all
    render json: experience
  end

  def create
    experience = Experience.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      job_title: params["job_title"],
      company: params["company"],
      details: params["details"],
      student_id: params["student_id"],
    )
    if experience.save
      render json: experience
    else
      render json: { error: experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    experience_id = params["id"]
    experience = Experience.find(experience_id)
    render json: experience
  end

  def update
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)
    experience.start_date = params["start_date"] || experience.start_date
    experience.end_date = params["end_date"] || experience.end_date
    experience.job_title = params["job_title"] || experience.job_title
    experience.company = params["company"] || experience.company
    experience.details = params["details"] || experience.details
    experience.student_id = params["student_id"] || experience.student_id
    if experience.save
      render json: experience
    else
      render json: { error: experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)
    experience.destroy
    render json: { message: "Experience successfully deleted" }
  end
end
