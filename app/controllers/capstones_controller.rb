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
    )
    capstone.save
    render json: capstone
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
    capstone.save
    render json: capstone
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: {message: "capstone successfully destroyed."}
  end
end
