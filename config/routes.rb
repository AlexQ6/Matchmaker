Rails.application.routes.draw do
  
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Home page route
  root 'home#page' 
  get 'home/page'

  
  resources :listings
  resources :coaches

  # profile page route
  get '/users/profile', to: 'users#show', as: "profile"

  
  
end
