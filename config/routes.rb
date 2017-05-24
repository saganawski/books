Rails.application.routes.draw do
  resources :books
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'books#index'
end
