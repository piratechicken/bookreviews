Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resources :profiles
  resources :books do
    resources :reviews
  end
end
