Rails.application.routes.draw do
  resources :books do 
  	resources :comments
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'books#index'
end
