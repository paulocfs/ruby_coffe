Rails.application.routes.draw do
  devise_for :admins
  devise_for :clients
 
 

  # Defines the root path route ("/")
  root "home#index"

  resources :home 
  resources :about 
  resources :services 
  resources :products 
  resources :reservations 
  resources :testimonials 
  resources :contacts 
  
end
