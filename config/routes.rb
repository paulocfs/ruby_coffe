Rails.application.routes.draw do

  root "home#index"
  devise_for :admins
  devise_for :clients
 
 
  resources :about, only: [:index]
  resources :services, only: [:index]
  resources :contacts, only: [:index, :create]
  resources :reservations, only: [:index]
  resources :testimonials, only: [:index]
  resources :products, only: [:index]
  
end
