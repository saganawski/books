Rails.application.routes.draw do
  resources :books do 
  	resources :comments, only: [:create, :destroy]
  	resources :votes
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'books#index'
end
