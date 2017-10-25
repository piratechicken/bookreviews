Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resources :profiles
  resources :books
  resources :reviews
end
