Rails.application.routes.draw do

  resources :parkings
  resources :spots
  resources :types
  devise_for :users
  resources :vehicle_fines
  resources :fines
  root 'vehicles#index'

  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
