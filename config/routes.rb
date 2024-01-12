Rails.application.routes.draw do
  get "/posts" => "posts#index"
  post"/posts" => "posts#create"
end
