class StudentsController < ApplicationController
  def test
    render json: { message: "hi" }
  end

  def post
    render json: { message: "hello everybody!" }
  end

  def brew
    render json: { message: "☕️" }
  end

  def meow
    render json: { message: "rrrrow" }
  end
end
