class StudentsController < ApplicationController
  def test
    render json: { message: "hi, how's it going?" }
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
