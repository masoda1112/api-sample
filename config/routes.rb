Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/post/:title" => "test#post"
  get "/get/:id" => "test#get"
  get "/update/:id/:title" => "test#update"
  get "/destroy/:id" => "test#destroy"
end
