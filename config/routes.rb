Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "posts" => "posts#index", as: :posts
  post "/posts" => "posts#create"
  get "posts/new" => "posts#new"
  get "/post/:id" => "posts#show", as: :post
  get "/post/:id/edit" => "posts#edit"
  patch "/post/:id" => "posts#update"


  # Defines the root path route ("/")
  # root "posts#index"
end
