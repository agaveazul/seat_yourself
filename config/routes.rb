Rails.application.routes.draw do
  resources :users
  resources :restaurants
  resources :reservations
  root 'restaurants#index'
end
