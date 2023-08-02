Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  get "/about", to:"about#index"
  get "/users/new", to: "users#new"
  post "/users/create", to: "users#create"
end
