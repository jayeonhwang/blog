Rails.application.routes.draw do
  get "/posts" => "posts#index"
  get"/posts/:id" => "posts#show"
  post"/posts" => "posts#create"
  patch"/posts/:id" => "posts#update"
  delete"/posts/:id" => "posts#destroy"
  
  get "/comments" => "comments#index"
  get "/comments/:id" => "comments#show"
  post "/comments" => "comments#create"
  patch "/comments/:id" => "comments#update"
  delete "/comments/:id" => "comments#destroy"
end
