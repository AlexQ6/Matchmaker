Rails.application.routes.draw do
  get 'home/page'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#page' 

  
  resources :listings
  resources :coaches

  # profile page routes

  get '/users/profile', to: 'users#show', as: "profile"

  
end
