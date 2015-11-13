Rails.application.routes.draw do
  resources :bids
  resources :items
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
