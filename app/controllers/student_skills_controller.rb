class StudentSkillsController < ApplicationController
  def index
    student_skills = StudentSkill.all
    render json: student_skills
  end

  def create
    student_skill = StudentSkill.new(
      student_id: current_user.id,
      skill_id: params[:skill_id],
    )
    if student_skill.save
      render json: student_skill
    else
      render json: { errors: student_skill.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    student_skill = StudentSkill.find_by(id: params[:id])
    render json: student_skill
  end

  def update
    student_skill = StudentSkill.find_by(id: params[:id])
    student_skill.student_id = params[:student_id] || student_skill.student_id
    student_skill.skill_id = params[:skill_id] || student_skill.skill_id
    if student_skill.save
      render json: student_skill
    else
      render json: { errors: student_skill.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    student_skill = StudentSkill.find_by(id: params[:id])
    student_skill.destroy
    render json: {message: "student skill successfully destroyed."}
  end
end
