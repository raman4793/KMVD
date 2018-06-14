Rails.application.routes.draw do

<<<<<<< HEAD
  resources :parkings
  resources :spots
  resources :types
=======
>>>>>>> 298d345999cccd116452ea795bb154ecabdc7090
  devise_for :users
  resources :vehicle_fines
  resources :fines
  root 'vehicles#index'

  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
