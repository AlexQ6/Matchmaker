Rails.application.routes.draw do
  
  # devise_for :users
  devise_for :users
  # Home page route
  root "listings#index"
  

  
  
  resources :coaches do 
    resources :listings
  end

  post '/coaches/:coach_id/listings', to: 'listings#create', as: 'create_listing'

  # profile page route
  get '/users/profile', to: 'users#show', as: "profile"

  
  
end
