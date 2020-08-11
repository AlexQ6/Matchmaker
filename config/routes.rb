Rails.application.routes.draw do
  
  # devise_for :users
  devise_for :users

  # home page route
  root "listings#index"
  

  
  # nested resources as listings belong to coach 
  resources :coaches do 
    resources :listings
  end

  # manual route for listing creation as answer to nested resource issues
  post '/coaches/:coach_id/listings', to: 'listings#create', as: 'create_listing'

  # profile page route
  get '/users/profile', to: 'users#show', as: "profile"

  
  
end
