class SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills
  end

  def create
    skills = Skill.new(
      name: params["name"],
    )
    if skills.save
      render json: skills
    else
      render json: { errors: skills.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    skills_id = params[:id]
    skills = Skill.find(skills_id)
    render json: skills
  end

  def update
    skills_id = params[:id]
    skills = Skill.find_by(id: skills_id)
    skills.name = params["name"] || skills.name
    if skills.save
      render json: skills
    else
      render json: { errors: skills.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    skills_id = params[:id]
    skills = Skill.find_by(id: skills_id)
    skills.destroy
    render json: { message: "Confirmation: Deleted!" }
  end
end
