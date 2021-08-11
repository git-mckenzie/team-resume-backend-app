class StudentsController < ApplicationController
  def test
    render json: { message: "hi" }
  end
end
