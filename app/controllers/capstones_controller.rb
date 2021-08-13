class CapstonesController < ApplicationController
  def index
    capstones = Capstone.all
    render json: capstones
  end

  def create
    capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: current_user.id
    )
    if capstone.save
      render json: capstone
    else
      render json: { errors: capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    capstone = Capstone.find_by(id: params[:id])
    render json: capstone
  end

  def update
    capstone = Capstone.find_by(id: params[:id])
    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot
    if capstone.save
      render json: capstone
    else
      render json: { errors: capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: {message: "capstone successfully destroyed."}
  end
end
