Rails.application.routes.draw do


  resources :parkings
  get 'spots/batch_new', to: "spots#batch_new", as: 'spots_batch_new'
  post 'spots/batch_create', to: "spots#batch_create", as: 'spots_batch_create'
  resources :spots
  resources :types
  devise_for :users
  resources :vehicle_fines
  resources :fines
  root 'vehicles#index'



  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
