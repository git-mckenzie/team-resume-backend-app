Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/test" => "students#test"

  get "/post" => "students#post"

  get "/coffee" => "students#brew"
end
