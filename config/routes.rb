Rails.application.routes.draw do
  devise_for :users

  #add the routes for device

  # root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "articles#index"
  
  resources :articles
  # delete "articles/:id", to: "articles#destroy"

end
