class StudentSkillsController < ApplicationController
  def index
    student_skills = StudentSkill.all
    render json: student_skills
  end

  def create
    student_skill = StudentSkill.new(
      student_id: params[:student_id],
      skill_id: params[:skill_id],
    )
    student_skill.save
    render json: student_skill
  end

  def show
    student_skill = StudentSkill.find_by(id: params[:id])
    render json: student_skill
  end

  def update
    student_skill = StudentSkill.find_by(id: params[:id])
    student_skill.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot
    capstone.save
    render json: capstone
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: {message: "capstone successfully destroyed."}
  end
end
