Rails.application.routes.draw do
  # routes for resume team
  get "/resumes" => "resumes#index"
  get "/resumes/:id" => "resumes#show"

  # routes for student team
  post "/sessions" => "sessions#create"

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  get "/education" => "education#index"
  get "/education/:id" => "education#show"
  post "/education" => "education#create"
  patch "/education/:id" => "education#update"
  delete "/education/:id" => "education#destroy"

  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  # patch "/skills/:id" => "skills#update"
  # delete "/skills/:id" => "skills#destroy"

  get "/capstones" => "capstones#index"
  get "/capstones/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"

  get "/student_skills" => "student_skills#index"
  get "/student_skills/:id" => "student_skills#show"
  post "/student_skills" => "student_skills#create"
  patch "/student_skills/:id" => "student_skills#update"
  delete "/student_skills/:id" => "student_skills#destroy"
end
