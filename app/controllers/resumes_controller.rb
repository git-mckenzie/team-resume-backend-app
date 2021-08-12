class ResumesController < ApplicationController
  def index
    student = Student.all
    render json: student
  end

  def show
    student_id = params["id"]
    student = Student.find(student_id)
    render json: student
  end
end
