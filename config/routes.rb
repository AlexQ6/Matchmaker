Rails.application.routes.draw do
  get 'home/page'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#page'

  
  resources :listings
  resources :coaches

  # profile page routes

  get '/users/:id', to: 'users#show', as: "profile"

  # delete "users/:id", to: "users#delete"

  # get "/users/:id/edit", to:"users#edit", as: "edit_user"

  # patch "/users/:id", to:"users#update"
  
end
