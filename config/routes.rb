Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  get "/about", to:"about#about_us"
  get "/contact", to:"about#contact_us"
  get "/privacy_policy", to:"about#privacy_policy"
  get "/term_and_condition", to:"about#term_and_condition"
  get "/users/new", to: "users#new"
  post "/users/create", to: "users#create"

  get "/students", to: "students#index"
  get "/students/new", to: "students#new"
  post "/students/create", to: "students#create"
end
