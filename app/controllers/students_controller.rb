class StudentsController < ApplicationController
  def test
    render json: { message: "hi" }
  end

  def post
    render json: { message: "hello everybody!"}
  end
end
