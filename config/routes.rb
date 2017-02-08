Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :restaurants
  resources :reservations
  root 'restaurants#index'
end
